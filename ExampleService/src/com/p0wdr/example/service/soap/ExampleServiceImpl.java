package com.p0wdr.example.service.soap;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @author Geoff McIver
 * This is an example service 
 * 
 */
public class ExampleServiceImpl implements ExampleService {
	

	@Override
	public String exampleOperation(String foo) {
		return new String("exampleOperation called from ExampleServiceImpl with arg:" + foo);
	}

	@Override
	public String exampleComplexOperation(ExampleComplexType exampleComplexType) {
		return new String("exampleComplexOperation called from ExampleServiceImpl with arg:" + exampleComplexType.toString());
	}

	@Override
	public String exampleOperationMultiPrimitiveArgs(String foo, String bar,
			Integer foo1, int bar1) {
 
		return new String("exampleComplexOperation called from ExampleServiceImpl with args:"
							+ "[foo: " + foo + "],"
							+ "[bar: " + bar + "],"
							+ "[foo1: " + foo1 + "],"
							+ "[bar1: " + bar1 + "]");
	}

	@Override
	public ExampleComplexType exampleOperationReturningComplexType(String foo) {
	    
		return new ExampleComplexType(foo);
	}

	@Override
	public List<ExampleComplexType> exampleOperationReturningListComplexType(
			String foo) {
				
		List<ExampleComplexType> complexTypes = new ArrayList<ExampleComplexType>();
		complexTypes.add(new ExampleComplexType(foo + " - 1"));
		complexTypes.add(new ExampleComplexType(foo + " - 2"));
		complexTypes.add(new ExampleComplexType(foo + " - 3"));
		complexTypes.add(new ExampleComplexType(foo + " - 4"));
		
		return complexTypes;
	}

	@Override
	public String noArgExampleOperation() {
		return new String("noArgExampleOperation called from ExampleServiceImpl");
	}
	
	@Override
	public void exampleCreate(ExampleComplexType exampleComplexType) throws ExampleServiceException {
		
		if (exampleComplexType.getFoo().contains("throw-me-an-error")){
			throw new ExampleServiceException("exampleCreate - as you wish - throwing you and error.... Argh!!!!!" + exampleComplexType.getFoo());
		}
	}
	@Override
	public void exampleUpdate(ExampleComplexType exampleComplexType) throws ExampleServiceException {
		
		if (exampleComplexType.getFoo().contains("throw-me-an-error")){
			throw new ExampleServiceException("exampleUpdate - as you wish - throwing you and error.... Argh!!!!!" + exampleComplexType.getFoo());
		}
	}
	@Override
	public void exampleDelete(ExampleComplexType exampleComplexType) throws ExampleServiceException {
		
		if (exampleComplexType.getFoo().contains("throw-me-an-error")){
			throw new ExampleServiceException("exampleDelete - as you wish - throwing you and error.... Argh!!!!!" + exampleComplexType.getFoo());
		}
	}
	
	

}
