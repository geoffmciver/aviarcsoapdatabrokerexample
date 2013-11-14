package com.p0wdr.example.service.soap;
public class ExampleServiceException extends Exception {

	private static final long serialVersionUID = 5160453781487345519L;
	
	public ExampleServiceException() {
		super();
	}
	
	public ExampleServiceException(final String message) {
        super(message);
	}
	
	public ExampleServiceException(final String message, final Throwable cause) {
        super(message, cause);
    }

}
