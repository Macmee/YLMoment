/*
 * YLMoment
 *
 * Copyright 2013 - present Yannick Loriot.
 * http://yannickloriot.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

#import <XCTest/XCTest.h>

#define EXP_SHORTHAND
#import "Expecta.h"

#import "YLMoment.h"

@interface YLMomentTest_LangEn : XCTestCase

@end

@implementation YLMomentTest_LangEn

- (void)setUp
{
    [super setUp];
    
    [[YLMoment proxy] setLocale:[NSLocale localeWithLocaleIdentifier:@"en_US"]];
}

- (void)tearDown
{
    [[YLMoment proxy] setLocale:[NSLocale currentLocale]];

    [super tearDown];
}

- (void)testLangFrom
{
    YLMoment *start = [YLMoment momentWithArray:@[@2007, @1, @28]];
    YLMoment *end;
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:44 forUnitKey:@"s"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"a few seconds");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:45 forUnitKey:@"s"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 minute");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:89 forUnitKey:@"s"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 minute");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:90 forUnitKey:@"s"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 minutes");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:44 forUnitKey:@"m"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"44 minutes");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:45 forUnitKey:@"m"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 hour");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:89 forUnitKey:@"m"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 hour");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:90 forUnitKey:@"m"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 hours");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:5 forUnitKey:@"h"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"5 hours");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:21 forUnitKey:@"h"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"21 hours");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:22 forUnitKey:@"h"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 day");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:35 forUnitKey:@"h"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 day");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:36 forUnitKey:@"h"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 days");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:1 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 day");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:5 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"5 days");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:25 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"25 days");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:26 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 month");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:30 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 month");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:45 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 month");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:46 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 months");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:74 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 months");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:76 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"3 months");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:1 forUnitKey:@"M"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 month");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:5 forUnitKey:@"M"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"5 months");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:344 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"11 months");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:345 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 year");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:547 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 year");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:548 forUnitKey:@"d"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"2 years");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:1 forUnitKey:@"y"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"1 year");
    
    end = [[YLMoment momentWithArray:@[@2007, @1, @28]] addAmountOfTime:5 forUnitKey:@"y"];
    expect([start fromMoment:end withSuffix:NO]).to.equal(@"5 years");
}

- (void)testLangSuffix
{
    YLMoment *moment = [YLMoment now];
    YLMoment *future = [[YLMoment now] addAmountOfTime:3 forUnitKey:@"s"];
    YLMoment *past   = [[YLMoment now] addAmountOfTime:-3 forUnitKey:@"s"];
    
    expect([future fromMoment:moment]).to.equal(@"in a few seconds");
    expect([past fromMoment:moment]).to.equal(@"a few seconds ago");
}

- (void)testLangNowFromNow
{
    expect([[YLMoment now] fromNow]).to.equal(@"a few seconds ago");
}

- (void)testLangFromNow
{
    YLMoment *reference1 = [[YLMoment now] addAmountOfTime:30 forCalendarUnit:NSCalendarUnitSecond];
    expect([reference1 fromNow]).to.equal(@"in a few seconds");
    
    YLMoment *reference2 = [[YLMoment now] addAmountOfTime:5 forCalendarUnit:NSCalendarUnitDay];
    expect([reference2 fromNow]).to.equal(@"in 5 days");
    
    YLMoment *reference3 = [[YLMoment now] addAmountOfTime:-1 forCalendarUnit:NSCalendarUnitDay];
    expect([reference3 fromNow]).to.equal(@"1 day ago");
}

- (void)testLangFromNowWithSuffix
{
    YLMoment *reference1 = [[YLMoment now] addAmountOfTime:-3 forCalendarUnit:NSCalendarUnitMonth];
    expect([reference1 fromNowWithSuffix:NO]).to.equal(@"3 months");
    
    YLMoment *reference2 = [[YLMoment now] addAmountOfTime:9 forCalendarUnit:NSCalendarUnitHour];
    expect([reference2 fromNowWithSuffix:YES]).to.equal(@"in 9 hours");
}

- (void)testLandFromDate {
    YLMoment *reference = [[YLMoment now] subtractAmountOfTime:6 forCalendarUnit:NSCalendarUnitMinute];
    expect([reference fromDate:[NSDate date]]).to.equal(@"6 minutes ago");
}

@end
