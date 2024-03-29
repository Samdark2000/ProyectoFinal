﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using RecursoHumanos.Models;

namespace RecursoHumanos.Controllers
{
    public class SalidasEmpleadosController : Controller
    {
        private Model1Container db = new Model1Container();

        // GET: SalidasEmpleados
        public ActionResult Index()
        {
            return View(db.SalidasEmpleadoSet.ToList());
        }

        // GET: SalidasEmpleados/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SalidasEmpleado salidasEmpleado = db.SalidasEmpleadoSet.Find(id);
            if (salidasEmpleado == null)
            {
                return HttpNotFound();
            }
            return View(salidasEmpleado);
        }

        // GET: SalidasEmpleados/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: SalidasEmpleados/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Empleado,TipoSalida,Motivo,FechaSalida")] SalidasEmpleado salidasEmpleado)
        {
            if (ModelState.IsValid)
            {
                db.SalidasEmpleadoSet.Add(salidasEmpleado);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(salidasEmpleado);
        }

        // GET: SalidasEmpleados/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SalidasEmpleado salidasEmpleado = db.SalidasEmpleadoSet.Find(id);
            if (salidasEmpleado == null)
            {
                return HttpNotFound();
            }
            return View(salidasEmpleado);
        }

        // POST: SalidasEmpleados/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Empleado,TipoSalida,Motivo,FechaSalida")] SalidasEmpleado salidasEmpleado)
        {
            if (ModelState.IsValid)
            {
                db.Entry(salidasEmpleado).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(salidasEmpleado);
        }

        // GET: SalidasEmpleados/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SalidasEmpleado salidasEmpleado = db.SalidasEmpleadoSet.Find(id);
            if (salidasEmpleado == null)
            {
                return HttpNotFound();
            }
            return View(salidasEmpleado);
        }

        // POST: SalidasEmpleados/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SalidasEmpleado salidasEmpleado = db.SalidasEmpleadoSet.Find(id);
            db.SalidasEmpleadoSet.Remove(salidasEmpleado);
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
