//
//  WLRequester.h
//  WLCodes
//
//  Created by jzjy on 2020/12/7.
//

#import <Foundation/Foundation.h>

@interface WLRequester : NSObject

+ (id)requestWithType:(NSInteger)type
                  api:(NSString *)api
               params:(NSDictionary *)params
             callback:(void(^)(void))callback;

@end
