//
//  PnxUtil.h
//  drawImage
//
//  Created by pera on 12-9-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PnxUtil : NSObject
+(UIImage *)addText:(UIImage *)img text:(NSString *)text1;
+(UIImage *)addImageLogo:(UIImage *)img text:(UIImage *)logo;
+(CVPixelBufferRef) pixelBufferFromCGImage: (CGImageRef) image;

@end
