package com.hastanerandevu.dao.impl;

import com.hastanerandevu.model.DoctorModel;
import com.hastanerandevu.model.PatientModel;
import com.hastanerandevu.model.ReviewsAboutDoctorsModel;

import javax.persistence.Query;
import java.util.List;

public class ReviewsAboutDoctorsDaoImpl extends BaseDaoImpl<ReviewsAboutDoctorsModel> {
  public List<ReviewsAboutDoctorsModel> getReviewsAboutDoctor(DoctorModel doctorModel) {
    Query query = getEntitymanager().createQuery("SELECT e FROM ReviewsAboutDoctorsModel e WHERE e.doctor = :DOCTOR_MODEL AND e.isAppropriate = :IS_APPROPRIATE ORDER BY e.creationTime DESC");

    query.setParameter("DOCTOR_MODEL", doctorModel);
    query.setParameter("IS_APPROPRIATE", '1');

    return query.getResultList();
  }

  public List<ReviewsAboutDoctorsModel> getReviewsOfPatient(PatientModel patientModel) {
    Query query = getEntitymanager().createQuery("SELECT e FROM ReviewsAboutDoctorsModel e WHERE e.patient = :PATIENT_MODEL ORDER BY e.creationTime DESC");

    query.setParameter("PATIENT_MODEL", patientModel);

    return query.getResultList();
  }

  public ReviewsAboutDoctorsModel getPatientReviewAboutDoctor(PatientModel patientModel, DoctorModel doctorModel) {
    Query query = getEntitymanager().createQuery("SELECT e FROM ReviewsAboutDoctorsModel e WHERE e.patient = :PATIENT AND e.doctor = :DOCTOR");
    query.setParameter("PATIENT", patientModel);
    query.setParameter("DOCTOR", doctorModel);

    if(query.getResultList().size() > 0) {
      return (ReviewsAboutDoctorsModel) query.getResultList().get(0);
    } else {
      return null;
    }
  }
}
