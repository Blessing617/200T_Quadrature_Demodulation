/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    stm32f1xx_it.c
  * @brief   Interrupt Service Routines.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f1xx_it.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */
#include "USART1.h"
#include "USART2.h"
#include "string.h"
#include "delay.h"
/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/* External variables --------------------------------------------------------*/
extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;
/* USER CODE BEGIN EV */
uint8_t Rx_data1[100];
uint8_t Rx_data2[100];
float AM_MD(uint16_t carrier_freq,uint16_t AM_MAX);
float FM_MD(uint16_t carrier_freq,uint16_t AM_MAX);
/* USER CODE END EV */

/******************************************************************************/
/*           Cortex-M3 Processor Interruption and Exception Handlers          */
/******************************************************************************/
/**
  * @brief This function handles Non maskable interrupt.
  */
void NMI_Handler(void)
{
  /* USER CODE BEGIN NonMaskableInt_IRQn 0 */

  /* USER CODE END NonMaskableInt_IRQn 0 */
  /* USER CODE BEGIN NonMaskableInt_IRQn 1 */
  while (1)
  {
  }
  /* USER CODE END NonMaskableInt_IRQn 1 */
}

/**
  * @brief This function handles Hard fault interrupt.
  */
void HardFault_Handler(void)
{
  /* USER CODE BEGIN HardFault_IRQn 0 */

  /* USER CODE END HardFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_HardFault_IRQn 0 */
    /* USER CODE END W1_HardFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Memory management fault.
  */
void MemManage_Handler(void)
{
  /* USER CODE BEGIN MemoryManagement_IRQn 0 */

  /* USER CODE END MemoryManagement_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_MemoryManagement_IRQn 0 */
    /* USER CODE END W1_MemoryManagement_IRQn 0 */
  }
}

/**
  * @brief This function handles Prefetch fault, memory access fault.
  */
void BusFault_Handler(void)
{
  /* USER CODE BEGIN BusFault_IRQn 0 */

  /* USER CODE END BusFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_BusFault_IRQn 0 */
    /* USER CODE END W1_BusFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Undefined instruction or illegal state.
  */
void UsageFault_Handler(void)
{
  /* USER CODE BEGIN UsageFault_IRQn 0 */

  /* USER CODE END UsageFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_UsageFault_IRQn 0 */
    /* USER CODE END W1_UsageFault_IRQn 0 */
  }
}

/**
  * @brief This function handles System service call via SWI instruction.
  */
void SVC_Handler(void)
{
  /* USER CODE BEGIN SVCall_IRQn 0 */

  /* USER CODE END SVCall_IRQn 0 */
  /* USER CODE BEGIN SVCall_IRQn 1 */

  /* USER CODE END SVCall_IRQn 1 */
}

/**
  * @brief This function handles Debug monitor.
  */
void DebugMon_Handler(void)
{
  /* USER CODE BEGIN DebugMonitor_IRQn 0 */

  /* USER CODE END DebugMonitor_IRQn 0 */
  /* USER CODE BEGIN DebugMonitor_IRQn 1 */

  /* USER CODE END DebugMonitor_IRQn 1 */
}

/**
  * @brief This function handles Pendable request for system service.
  */
void PendSV_Handler(void)
{
  /* USER CODE BEGIN PendSV_IRQn 0 */

  /* USER CODE END PendSV_IRQn 0 */
  /* USER CODE BEGIN PendSV_IRQn 1 */

  /* USER CODE END PendSV_IRQn 1 */
}

/**
  * @brief This function handles System tick timer.
  */
void SysTick_Handler(void)
{
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}

/******************************************************************************/
/* STM32F1xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32f1xx.s).                    */
/******************************************************************************/

/**
  * @brief This function handles USART1 global interrupt.
  */
void USART1_IRQHandler(void)
{
  /* USER CODE BEGIN USART1_IRQn 0 */
	My_USART1_IRQHandler(USART1);
  /* USER CODE END USART1_IRQn 0 */
  HAL_UART_IRQHandler(&huart1);
  /* USER CODE BEGIN USART1_IRQn 1 */
	 if(USART1_ReadLine(Rx_data1))
    {   
		
    }
  /* USER CODE END USART1_IRQn 1 */
}

/**
  * @brief This function handles USART2 global interrupt.
  */
void USART2_IRQHandler(void)
{
  /* USER CODE BEGIN USART2_IRQn 0 */	
	float Ma;
	float Md;
	uint16_t carrier_freq;
	uint16_t max_freq_addr;
	uint16_t AM_MAX;
	static uint16_t AM_MAX_t = 0;

	My_USART2_IRQHandler(USART2);
  /* USER CODE END USART2_IRQn 0 */
  HAL_UART_IRQHandler(&huart2);
  /* USER CODE BEGIN USART2_IRQn 1 */
	 if(USART2_ReadLine(Rx_data2))
    {   
		carrier_freq  =  Rx_data2[1];
		max_freq_addr = (Rx_data2[2]<<24) + (Rx_data2[3]<<16) + (Rx_data2[4]<<8) +((Rx_data2[5]));
		AM_MAX	= (Rx_data2[8]<<24)+(Rx_data2[6]<<6) +(Rx_data2[7]);
		
		if(Rx_data2[0] == 1)
		{
			printf("t4.txt=\"未调载波\"\xff\xff\xff");
			printf("t5.txt=\"%d MHz\"\xff\xff\xff",carrier_freq);
			printf("t6.txt=\" \"\xff\xff\xff");
			printf("t7.txt=\" \"\xff\xff\xff");
			printf("t9.txt=\" \"\xff\xff\xff");	
		}
		else if(Rx_data2[0] == 2)
		{
			printf("t4.txt=\"AM调制\"\xff\xff\xff");
			printf("t5.txt=\"%d MHz\"\xff\xff\xff",carrier_freq);
				
			Ma = AM_MD(carrier_freq,AM_MAX);
			if(AM_MAX_t == AM_MAX)	
				printf("t6.txt=\"%.2f %%\"\xff\xff\xff",Ma);
			printf("t7.txt=\" \"\xff\xff\xff");	
			printf("t9.txt=\"%.1f kHz\"\xff\xff\xff",(float)max_freq_addr/42);
		}
		else if(Rx_data2[0] == 4)
		{
			printf("t4.txt=\"FM调制\"\xff\xff\xff");
			printf("t5.txt=\"%d MHz\"\xff\xff\xff",carrier_freq);
			Md = FM_MD(carrier_freq,AM_MAX);
			if(AM_MAX_t == AM_MAX)
			{
				printf("t6.txt=\"%.1f\"\xff\xff\xff",Md / ((float)max_freq_addr/42) );
				printf("t7.txt=\"%.1f kHz\"\xff\xff\xff",Md);	
			}
			printf("t9.txt=\"%.1f kHz\"\xff\xff\xff",(float)max_freq_addr/42);				
		}
		else
		{
			printf("t4.txt=\"正在测量\"\xff\xff\xff");
			printf("t5.txt=\"%d MHz\"\xff\xff\xff",carrier_freq);
			printf("t6.txt=\" \"\xff\xff\xff");
			printf("t7.txt=\" \"\xff\xff\xff");
			printf("t9.txt=\" \"\xff\xff\xff");	
		}
		AM_MAX_t = AM_MAX;
//		printf("t5.txt=\"%d MHz\"\xff\xff\xff",carrier_freq);
//		printf("t6.txt=\"%d \"\xff\xff\xff",max_freq_addr);
//		printf("t7.txt=\"%d \"\xff\xff\xff",AM_MAX);				
    }
  /* USER CODE END USART2_IRQn 1 */
}

/* USER CODE BEGIN 1 */
float AM_MD(uint16_t carrier_freq,uint16_t AM_MAX)
{
	float AM_MD = 0;
	switch(carrier_freq)
	{
		case 10 : AM_MD = 0.3262f*(float)AM_MAX-101.34;	break;
		case 11 : AM_MD = 0.3281f*(float)AM_MAX-100.16; break;
		case 12 : AM_MD = 0.3335f*(float)AM_MAX-100.47; break;
		case 13 : AM_MD = 0.3391f*(float)AM_MAX-100.75; break;
		case 14 : AM_MD = 0.3405f*(float)AM_MAX-100.25; break;
		case 15 : AM_MD = 0.3408f*(float)AM_MAX-100.65; break;
		case 16 : AM_MD = 0.3427f*(float)AM_MAX-99.887; break;
		case 17 : AM_MD = 0.3585f*(float)AM_MAX-100.6 ; break;
		case 18 : AM_MD = 0.3743f*(float)AM_MAX-100.47; break;
		case 19 : AM_MD = 0.3846f*(float)AM_MAX-100   ; break;
		case 20 : AM_MD = 0.3966f*(float)AM_MAX-100.7 ; break;
		case 21 : AM_MD = 0.4082f*(float)AM_MAX-100.72; break;
		case 22 : AM_MD = 0.4204f*(float)AM_MAX-100.51; break;
		case 23 : AM_MD = 0.4328f*(float)AM_MAX-100.13; break;
		case 24 : AM_MD = 0.4466f*(float)AM_MAX-99.754; break;
		case 25 : AM_MD = 0.4628f*(float)AM_MAX-99.969; break;
		case 26 : AM_MD = 0.4803f*(float)AM_MAX-99.872; break;
		case 27 : AM_MD = 0.5000f*(float)AM_MAX-100   ; break;
		case 28 : AM_MD = 0.5214f*(float)AM_MAX-100.34; break;
		case 29 : AM_MD = 0.5353f*(float)AM_MAX-100.62; break;
		case 30 : AM_MD = 0.5128f*(float)AM_MAX-99.728; break;
		default : AM_MD = (float)AM_MAX;
	}
	return AM_MD;
}

float FM_MD(uint16_t carrier_freq,uint16_t AM_MAX)
{
	float FM_MD = 0;
	switch(carrier_freq)
	{
		case 10 : FM_MD = 0.0479f*(float)AM_MAX-12.431; break;
		case 11 : FM_MD = 0.0496f*(float)AM_MAX-13.212; break;
		case 12 : FM_MD = 0.0505f*(float)AM_MAX-10.262; break;
		case 13 : FM_MD = (float)AM_MAX; break;
		case 14 : FM_MD = (float)AM_MAX; break;
		case 15 : FM_MD = (float)AM_MAX; break;
		case 16 : FM_MD = (float)AM_MAX; break;
		case 17 : FM_MD = (float)AM_MAX; break;
		case 18 : FM_MD = (float)AM_MAX; break;
		case 19 : FM_MD = (float)AM_MAX; break;
		case 20 : FM_MD = 0.0709f*(float)AM_MAX-7.0093; break;
		case 21 : FM_MD = 0.0743f*(float)AM_MAX-6.9947; break;
		case 22 : FM_MD = 0.0796f*(float)AM_MAX-6.041 ; break;
		case 23 : FM_MD = 0.0837f*(float)AM_MAX-5.7065; break;
		case 24 : FM_MD = 0.0901f*(float)AM_MAX-4.6095; break;
		case 25 : FM_MD = 0.0973f*(float)AM_MAX-5.1049; break;
		case 26 : FM_MD = 0.1045f*(float)AM_MAX-3.8177; break;
		case 27 : FM_MD = 0.1130f*(float)AM_MAX-3.8160; break;
		case 28 : FM_MD = (float)AM_MAX; break;
		case 29 : FM_MD = (float)AM_MAX; break;
		case 30 : FM_MD = (float)AM_MAX; break;
		default : FM_MD = (float)AM_MAX;
	}	
	return FM_MD;
}
/* USER CODE END 1 */
