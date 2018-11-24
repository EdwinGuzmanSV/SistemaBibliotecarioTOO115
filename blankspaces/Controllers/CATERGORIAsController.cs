﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using blankspaces.Models;

namespace blankspaces.Controllers
{
    public class CATERGORIAsController : Controller
    {
        private BibliotecaEntities1 db = new BibliotecaEntities1();

        // GET: CATERGORIAs
        public ActionResult Index()
        {
            var cATERGORIAs = db.CATERGORIAs.Include(c => c.AspNetUser);
            return View(cATERGORIAs.ToList());
        }

        // GET: CATERGORIAs/Details/5
        public ActionResult Details(decimal id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CATERGORIA cATERGORIA = db.CATERGORIAs.Find(id);
            if (cATERGORIA == null)
            {
                return HttpNotFound();
            }
            return View(cATERGORIA);
        }

        // GET: CATERGORIAs/Create
        public ActionResult Create()
        {

            ViewBag.ID = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.CAT_IDCATEGORIA = new SelectList(db.CATERGORIAs, "NOMCAT", "NOMCAT");
            return View();
        }

        // POST: CATERGORIAs/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IDCATEGORIA,ID,NOMCAT")] CATERGORIA cATERGORIA)
        {
            if (ModelState.IsValid)
            {
                db.CATERGORIAs.Add(cATERGORIA);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ID = new SelectList(db.AspNetUsers, "Id", "Email", cATERGORIA.ID);
            ViewBag.CAT_IDCATEGORIA = new SelectList(db.CATERGORIAs, "IDCATEGORIA", "ID");
            return View(cATERGORIA);
        }

        // GET: CATERGORIAs/Edit/5
        public ActionResult Edit(decimal id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CATERGORIA cATERGORIA = db.CATERGORIAs.Find(id);
            if (cATERGORIA == null)
            {
                return HttpNotFound();
            }
            ViewBag.ID = new SelectList(db.AspNetUsers, "Email", "Email", cATERGORIA.ID);
            ViewBag.CAT_IDCATEGORIA = new SelectList(db.CATERGORIAs, "NOMCAT", "NOMCAT");
            return View(cATERGORIA);
        }

        // POST: CATERGORIAs/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IDCATEGORIA,CAT_IDCATEGORIA,ID,NOMCAT")] CATERGORIA cATERGORIA)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cATERGORIA).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ID = new SelectList(db.AspNetUsers, "Id", "Email", cATERGORIA.ID);
            ViewBag.CAT_IDCATEGORIA = new SelectList(db.CATERGORIAs, "IDCATEGORIA", "ID");
            return View(cATERGORIA);
        }

        // GET: CATERGORIAs/Delete/5
        public ActionResult Delete(decimal id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CATERGORIA cATERGORIA = db.CATERGORIAs.Find(id);
            if (cATERGORIA == null)
            {
                return HttpNotFound();
            }
            return View(cATERGORIA);
        }

        // POST: CATERGORIAs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(decimal id)
        {
            CATERGORIA cATERGORIA = db.CATERGORIAs.Find(id);
            db.CATERGORIAs.Remove(cATERGORIA);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
