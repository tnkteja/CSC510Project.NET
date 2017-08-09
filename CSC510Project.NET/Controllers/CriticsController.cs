using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using CSC510Project.NET.Models;

namespace CSC510Project.NET
{
    public class CriticsController : ApiController
    {
        private EntityDataModelContainer db = new EntityDataModelContainer();

        // GET: api/Critics
        public IQueryable<Critic> GetCritics()
        {
            return db.Critics;
        }

        // GET: api/Critics/5
        [ResponseType(typeof(Critic))]
        public async Task<IHttpActionResult> GetCritic(int id)
        {
            Critic critic = await db.Critics.FindAsync(id);
            if (critic == null)
            {
                return NotFound();
            }

            return Ok(critic);
        }

        // PUT: api/Critics/5
        [ResponseType(typeof(void))]
        public async Task<IHttpActionResult> PutCritic(int id, Critic critic)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != critic.Id)
            {
                return BadRequest();
            }

            db.Entry(critic).State = EntityState.Modified;

            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CriticExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Critics
        [ResponseType(typeof(Critic))]
        public async Task<IHttpActionResult> PostCritic(Critic critic)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Critics.Add(critic);
            await db.SaveChangesAsync();

            return CreatedAtRoute("DefaultApi", new { id = critic.Id }, critic);
        }

        // DELETE: api/Critics/5
        [ResponseType(typeof(Critic))]
        public async Task<IHttpActionResult> DeleteCritic(int id)
        {
            Critic critic = await db.Critics.FindAsync(id);
            if (critic == null)
            {
                return NotFound();
            }

            db.Critics.Remove(critic);
            await db.SaveChangesAsync();

            return Ok(critic);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool CriticExists(int id)
        {
            return db.Critics.Count(e => e.Id == id) > 0;
        }
    }
}