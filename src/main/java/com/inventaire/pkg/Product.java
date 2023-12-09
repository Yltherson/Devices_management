package com.inventaire.pkg;

public class Product {
	
	private String codeProduct;
	private String type;
	private String brand;
	private String model;
	private String operatingSystem;
	private String storage;
	private String processor;
	private String devices;
	private String service;
	private String location;
	private String user;
	private String status;
	
	
	public Product(String codeProduct, String type, String brand, String model, String operatingSystem, String storage, String processor,
			String devices, String service, String location, String user, String status) {
		super();
		this.codeProduct = codeProduct;
		this.type = type;
		this.brand = brand;
		this.model = model;
		this.operatingSystem = operatingSystem;
		this.storage = storage;
		this.processor = processor;
		this.devices = devices;
		this.service = service;
		this.location = location;
		this.user = user;
		this.status = status;
		
	}
	
	public String getCodeProduct() {
		return codeProduct;
	}
	
	public void setCodeProduct(String codeProduct) {
		this.codeProduct = codeProduct;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getOperatingSystem() {
		return operatingSystem;
	}
	public void setOperatingSystem(String operatingSystem) {
		this.operatingSystem = operatingSystem;
	}
	public String getStorage() {
		return storage;
	}
	public void setStorage(String storage) {
		this.storage = storage;
	}
	public String getProcessor() {
		return processor;
	}
	public void setProcessor(String processor) {
		this.processor = processor;
	}
	public String getDevices() {
		return devices;
	}
	public void setDevices(String devices) {
		this.devices = devices;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
