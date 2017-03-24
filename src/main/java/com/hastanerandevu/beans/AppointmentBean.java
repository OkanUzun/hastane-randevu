package com.hastanerandevu.beans;

import com.hastanerandevu.model.CityModel;
import com.hastanerandevu.model.DistrictModel;
import com.hastanerandevu.model.HospitalModel;
import com.hastanerandevu.model.PoliclinicModel;
import com.hastanerandevu.service.CityServiceImpl;
import com.hastanerandevu.service.DistrictServiceImpl;
import com.hastanerandevu.service.HospitalServiceImpl;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ValueChangeEvent;
import java.io.Serializable;
import java.util.List;

@ManagedBean(name = "appointment")
@ViewScoped
public class AppointmentBean implements Serializable {
  private CityServiceImpl cityService = new CityServiceImpl();
  private DistrictServiceImpl districtService = new DistrictServiceImpl();
  private HospitalServiceImpl hospitalService = new HospitalServiceImpl();

  private CityModel cityModel = new CityModel();
  private DistrictModel districtModel = new DistrictModel();
  private HospitalModel hospitalModel = new HospitalModel();
  private PoliclinicModel policlinicModel = new PoliclinicModel();

  public CityModel getCityModel() {
    return cityModel;
  }

  public void setCityModel(CityModel cityModel) {
    this.cityModel = cityModel;
  }

  public DistrictModel getDistrictModel() {
    return districtModel;
  }

  public void setDistrictModel(DistrictModel districtModel) {
    this.districtModel = districtModel;
  }

  public HospitalModel getHospitalModel() {
    return hospitalModel;
  }

  public void setHospitalModel(HospitalModel hospitalModel) {
    this.hospitalModel = hospitalModel;
  }

  public PoliclinicModel getPoliclinicModel() {
    return policlinicModel;
  }

  public void setPoliclinicModel(PoliclinicModel policlinicModel) {
    this.policlinicModel = policlinicModel;
  }

  public List<String> getCities() {
    return cityService.getCities();
  }

  public List<HospitalModel> getHospitalByDistrict() {
    return districtService.getHospitalByDistrict(districtModel);
  }

  public List<PoliclinicModel> getPoliclinicByHospital() {
    return hospitalService.getPoliclinicByHospital(hospitalModel);
  }

  public void cityListener(ValueChangeEvent value) {
    cityModel.setCityName(value.getNewValue().toString());
  }

  public List<String> getDistrictsByCity() {
    return cityService.getAllDistrictsByCity(cityModel);
  }
}