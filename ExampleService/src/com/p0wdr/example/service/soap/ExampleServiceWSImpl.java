package com.p0wdr.example.service.soap;

import java.util.List;

import javax.jws.WebService;

@WebService(endpointInterface="com.p0wdr.example.service.soap.ExampleService", serviceName="exampleService" )
public class ExampleServiceWSImpl implements ExampleService {
	
	
	private ExampleService exampleService;
	
	
	public void init (){
		
	}

	@Override
	public String exampleOperation(String foo) {
		return exampleService.exampleOperation(foo);
	}
	
	@Override
	public ExampleComplexType exampleOperationReturningComplexType(String foo) {
		return exampleService.exampleOperationReturningComplexType(foo);
	}
	
	@Override
	public List<ExampleComplexType> exampleOperationReturningListComplexType(String foo) {
		return exampleService.exampleOperationReturningListComplexType(foo);
	}
	
	@Override
	public String exampleOperationMultiPrimitiveArgs(String foo, String bar, Integer foo1, int bar1) {
		return exampleService.exampleOperationMultiPrimitiveArgs(foo, bar, foo1, bar1);
	}
	
	@Override
	public String exampleComplexOperation(ExampleComplexType exampleComplexType) {
		return exampleService.exampleComplexOperation(exampleComplexType);
	}
	
	@Override
	public String noArgExampleOperation() {
		return exampleService.noArgExampleOperation();
	}
	
	
	@Override
	public void exampleCreate(ExampleComplexType exampleComplexType)
			throws ExampleServiceException {
		exampleService.exampleCreate(exampleComplexType);
		
	}

	@Override
	public void exampleUpdate(ExampleComplexType exampleComplexType)
			throws ExampleServiceException {
		exampleService.exampleUpdate(exampleComplexType);
		
	}

	@Override
	public void exampleDelete(ExampleComplexType exampleComplexType)
			throws ExampleServiceException {
		exampleService.exampleDelete(exampleComplexType);
		
	}

	
	public void setExampleService(ExampleServiceImpl exampleService) {
		this.exampleService = exampleService;
	}

	

	

	

}