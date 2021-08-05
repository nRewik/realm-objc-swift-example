//
//  Cat.h
//  test-owkesfm
//
//  Created by Nutchaphon Rewik on 5/8/2564 BE.
//

#import <Foundation/Foundation.h>
@import Realm;

NS_ASSUME_NONNULL_BEGIN

@interface Cat : RLMObject

@property RLMObjectId *_id;
@property NSString *name;

@end

NS_ASSUME_NONNULL_END
