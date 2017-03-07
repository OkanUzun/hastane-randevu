package com.hastanerandevu.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table (name = "disease")
public class DiseaseModel {

  @Id
  @Column (name = "PK")
  @GeneratedValue (strategy = GenerationType.AUTO)
  private long pk;

  @Column (name = "DISEASE_NAME")
  private String diseaseName;

  @ManyToOne (fetch = FetchType.LAZY)
  @JoinColumn (name = "FK_DISEASE_TYPE")
  private DiseaseTypeModel diseaseTypeModel;

  @Column (name = "CREATION_TIME")
  private Date creationTime;

  @Column (name = "MODIFIED_TIME")
  private Date modifiedTime;

  @Column (name = "IS_ACTIVE")
  private char isActive;

  @OneToMany (mappedBy = "diseaseModel")
  private List<PatientDiseaseRelModel> patientDiseaseRelModels;

  public long getPk () {
    return pk;
  }

  public void setPk (long pk) {
    this.pk = pk;
  }

  public String getDiseaseName () {
    return diseaseName;
  }

  public void setDiseaseName (String diseaseName) {
    this.diseaseName = diseaseName;
  }

  public DiseaseTypeModel getDiseaseTypeModel () {
    return diseaseTypeModel;
  }

  public void setDiseaseTypeModel (DiseaseTypeModel diseaseTypeModel) {
    this.diseaseTypeModel = diseaseTypeModel;
  }

  public Date getCreationTime () {
    return creationTime;
  }

  public void setCreationTime (Date creationTime) {
    this.creationTime = creationTime;
  }

  public Date getModifiedTime () {
    return modifiedTime;
  }

  public void setModifiedTime (Date modifiedTime) {
    this.modifiedTime = modifiedTime;
  }

  public char getIsActive () {
    return isActive;
  }

  public void setIsActive (char isActive) {
    this.isActive = isActive;
  }
}
