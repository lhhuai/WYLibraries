//
//  WYMacros.h
//  WYLibraries
//
//  Created by seaphy on 16/5/11.
//  Copyright © 2016年 seaphyliu. All rights reserved.
//

#ifndef WYMacros_h
#define WYMacros_h

/// 有行间距计算多行Label的高度
#define WY_MULTILINE_TEXTSIZE_MARGIN(text, font, maxSize, mode) [text length] > 0 ? [text boundingRectWithSize:maxSize options:(NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName:font, NSParagraphStyleAttributeName: paragraphStyle} context:nil].size : CGSizeZero;


#ifdef DEBUG
# define DLog(fmt, ...) NSLog((@"[file:%s]\n" "[function:%s]\n" "[line:%d] \n" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
# define DLog(...);
#endif


#endif /* WYMacros_h */
