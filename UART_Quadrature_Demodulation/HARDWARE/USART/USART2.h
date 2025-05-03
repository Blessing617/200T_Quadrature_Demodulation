#ifndef _USART2_H
#define _USART2_H
#include "main.h"
#include "usart.h"
#include "stdio.h"

#define USART2_MAX_LEN 100

//用于字节、行和字符串
//对于Writexx（）函数，0表示false，该函数可以用单个if（）包装
//对于ReadChar（），结果是缓冲区中最后一个提取的字符；
//对于Readxx（）的其余部分，结果是写入str[]的字符数；

void USART2_Init(UART_HandleTypeDef* huart);
void USART2_WriteChar(uint8_t ch);
uint8_t USART2_Write(uint8_t *str, uint16_t len);
uint8_t USART2_WriteStr(uint8_t *str);                    //将发送\0；
uint8_t USART2_WriteLine(uint8_t *str);                   //字符串的\0不会被发送，传输的数据以\r\n结尾（末尾没有\0）
uint8_t USART2_WriteUntil(uint8_t *str, uint8_t endChar); //类似于带有自定义EndChar的MyUSART1_WriteStr（）
uint8_t USART2_ReadChar(void);
uint8_t USART2_PeekChar(void);
uint32_t USART2_Read(uint8_t *str, uint16_t maxLen);

uint8_t USART2_CanReadLine(void);
uint8_t USART2_CanReadUntil(uint16_t endChar);
uint8_t USART2_CanReadStr(void);

//对于ReadStr（）、ReadUntil（）和ReadLine（），如果EndSequence不匹配，它们将返回0，bufferPos也不会更改。
uint32_t USART2_ReadStr(uint8_t *str);
uint32_t USART2_ReadUntil(uint8_t *str, uint16_t endChar);
uint32_t USART2_ReadLine(uint8_t *str);
uint32_t USART2_ReadAll(uint8_t *str);
void __USART2_Shift(uint32_t len);
void __USART2_DumpAll(void);
void USART2_ClearBuffer(void);

void My_USART2_IRQHandler(USART_TypeDef *source);
#endif

/*
在stm32fxxx_it.c/stm32hxxx_it.c/stm32g4xx_it.c文件中

1.第一步
在USER CODE BEGIN Includes后
添加
#include "USART\USART2.h"

2.第二步
在函数
USARTx_IRQHandler()的语句HAL_UART_IRQHandler()之前添加
My_USART2_IRQHandler(USARTx);语句

记得在CUBEMX中打开串口中断
*/
