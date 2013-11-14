package com.p0wdr.example.service.soap;

import java.util.List;

import javax.jws.WebService;

@WebService
public interface ExampleService {
	
	
	public String exampleOperationMultiPrimitiveArgs(String foo, String bar, Integer foo1, int bar1);
	
	public String noArgExampleOperation();
	
	public String exampleOperation(String foo);
	
	public ExampleComplexType exampleOperationReturningComplexType(String foo);
	
	public List<ExampleComplexType> exampleOperationReturningListComplexType(String foo);
	
	public String exampleComplexOperation(ExampleComplexType exampleComplexType);
	
	public void exampleCreate(ExampleComplexType exampleComplexType) throws ExampleServiceException;
	public void exampleUpdate(ExampleComplexType exampleComplexType) throws ExampleServiceException;
	public void exampleDelete(ExampleComplexType exampleComplexType) throws ExampleServiceException;

}




