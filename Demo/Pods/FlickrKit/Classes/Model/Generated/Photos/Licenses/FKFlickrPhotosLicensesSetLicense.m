//
//  FKFlickrPhotosLicensesSetLicense.m
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosLicensesSetLicense.h" 

@implementation FKFlickrPhotosLicensesSetLicense



- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 1;
}

- (NSString *) name {
    return @"flickr.photos.licenses.setLicense";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
	}
	if(!self.license_id) {
		valid = NO;
		[errorDescription appendString:@"'license_id', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.photo_id) {
		[args setValue:self.photo_id forKey:@"photo_id"];
	}
	if(self.license_id) {
		[args setValue:self.license_id forKey:@"license_id"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosLicensesSetLicenseError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrPhotosLicensesSetLicenseError_LicenseNotFound:
			return @"License not found";
		case FKFlickrPhotosLicensesSetLicenseError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPhotosLicensesSetLicenseError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosLicensesSetLicenseError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosLicensesSetLicenseError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosLicensesSetLicenseError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosLicensesSetLicenseError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosLicensesSetLicenseError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosLicensesSetLicenseError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPhotosLicensesSetLicenseError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosLicensesSetLicenseError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosLicensesSetLicenseError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosLicensesSetLicenseError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosLicensesSetLicenseError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
