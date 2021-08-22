package com.devsuperior.dslearnbds.resources.exceptions;

import java.time.Instant;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.devsuperior.dslearnbds.services.exceptions.DatabaseException;
import com.devsuperior.dslearnbds.services.exceptions.ForbiddenException;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;
import com.devsuperior.dslearnbds.services.exceptions.UnauthorizedException;

@ControllerAdvice // allows error interception/capture
public class ResourceExceptionHandler {

	@ExceptionHandler(ResourceNotFoundException.class) // @ExceptionHandler with parameter identifies what type of
														// exception this method will handle
	public ResponseEntity<StandardError> entiryNotFound(
			ResourceNotFoundException error, HttpServletRequest request) {
		HttpStatus status = HttpStatus.NOT_FOUND;
		StandardError sd = new StandardError();

		sd.setTimestamp(Instant.now());
		sd.setStatus(status.value()); // NOT_FOUND = 404
		sd.setError("Resource not found");
		sd.setMessage(error.getMessage()); // Message thrown by Service layer
		sd.setPath(request.getRequestURI());

		return ResponseEntity.status(status).body(sd);
	}

	@ExceptionHandler(DatabaseException.class)
	public ResponseEntity<StandardError> database(DatabaseException error,
			HttpServletRequest request) {
		HttpStatus status = HttpStatus.BAD_REQUEST;
		StandardError sd = new StandardError();

		sd.setTimestamp(Instant.now());
		sd.setStatus(status.value()); // BAD_REQUEST = 400
		sd.setError("Database exception");
		sd.setMessage(error.getMessage()); // Message thrown by Service layer
		sd.setPath(request.getRequestURI());

		return ResponseEntity.status(status).body(sd);
	}

	// MethodArgumentNotValidException
	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<ValidationError> validation(
			MethodArgumentNotValidException error, HttpServletRequest request) {
		HttpStatus status = HttpStatus.UNPROCESSABLE_ENTITY; // 422
		ValidationError err = new ValidationError();

		err.setTimestamp(Instant.now());
		err.setStatus(status.value());
		err.setError("Validation exception");
		err.setMessage(error.getMessage()); // Message thrown by Service layer
		err.setPath(request.getRequestURI());

		for (FieldError fe : error.getBindingResult().getFieldErrors()) {
			err.addError(fe.getField(), fe.getDefaultMessage());
		}
		return ResponseEntity.status(status).body(err);
	}

	@ExceptionHandler(ForbiddenException.class)
	public ResponseEntity<OAuthCustomError> forbidden(ForbiddenException error,
			HttpServletRequest request) {

		OAuthCustomError err = new OAuthCustomError("Forbidden",
				error.getMessage());
		HttpStatus status = HttpStatus.FORBIDDEN;

		return ResponseEntity.status(status).body(err);
	}

	@ExceptionHandler(UnauthorizedException.class)
	public ResponseEntity<OAuthCustomError> unauthorized(
			UnauthorizedException error,
			HttpServletRequest request) {
		OAuthCustomError err = new OAuthCustomError("Unauthorized",
				error.getMessage());
		// HttpStatus status = HttpStatus.UNAUTHORIZED;

		return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(err);
	}

}
