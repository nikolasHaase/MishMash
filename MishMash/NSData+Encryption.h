//
//  NSData+Encryption.h
//  MM-Login-Scheme
//
//  Created by Shinichi Kudo on 8/17/16.
//  Copyright © 2016 Nikolas Haase. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Encryption)
- (NSData *)AES256EncryptWithKey:(NSString *)key;
- (NSData *)AES256DecryptWithKey:(NSString *)key;
@end
