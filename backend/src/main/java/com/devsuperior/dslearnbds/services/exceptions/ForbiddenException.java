/* Used to return error 403 - Forbidden: Authenticated but not authorized*/
package com.devsuperior.dslearnbds.services.exceptions;



public class ForbiddenException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public ForbiddenException(String msg) {
		super(msg);
	}

}
