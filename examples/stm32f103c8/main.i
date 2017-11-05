# 1 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
# 1 "D:\\Dropbox\\Priv\\Projects\\nRIP24\\examples\\stm32f103c8//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
# 11 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
# 1 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h" 1
# 171 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h"
typedef enum IRQn
{

  NonMaskableInt_IRQn = -14,
  MemoryManagement_IRQn = -12,
  BusFault_IRQn = -11,
  UsageFault_IRQn = -10,
  SVCall_IRQn = -5,
  DebugMonitor_IRQn = -4,
  PendSV_IRQn = -2,
  SysTick_IRQn = -1,


  WWDG_IRQn = 0,
  PVD_IRQn = 1,
  TAMPER_IRQn = 2,
  RTC_IRQn = 3,
  FLASH_IRQn = 4,
  RCC_IRQn = 5,
  EXTI0_IRQn = 6,
  EXTI1_IRQn = 7,
  EXTI2_IRQn = 8,
  EXTI3_IRQn = 9,
  EXTI4_IRQn = 10,
  DMA1_Channel1_IRQn = 11,
  DMA1_Channel2_IRQn = 12,
  DMA1_Channel3_IRQn = 13,
  DMA1_Channel4_IRQn = 14,
  DMA1_Channel5_IRQn = 15,
  DMA1_Channel6_IRQn = 16,
  DMA1_Channel7_IRQn = 17,
# 248 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h"
  ADC1_2_IRQn = 18,
  USB_HP_CAN1_TX_IRQn = 19,
  USB_LP_CAN1_RX0_IRQn = 20,
  CAN1_RX1_IRQn = 21,
  CAN1_SCE_IRQn = 22,
  EXTI9_5_IRQn = 23,
  TIM1_BRK_IRQn = 24,
  TIM1_UP_IRQn = 25,
  TIM1_TRG_COM_IRQn = 26,
  TIM1_CC_IRQn = 27,
  TIM2_IRQn = 28,
  TIM3_IRQn = 29,
  TIM4_IRQn = 30,
  I2C1_EV_IRQn = 31,
  I2C1_ER_IRQn = 32,
  I2C2_EV_IRQn = 33,
  I2C2_ER_IRQn = 34,
  SPI1_IRQn = 35,
  SPI2_IRQn = 36,
  USART1_IRQn = 37,
  USART2_IRQn = 38,
  USART3_IRQn = 39,
  EXTI15_10_IRQn = 40,
  RTCAlarm_IRQn = 41,
  USBWakeUp_IRQn = 42
# 476 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h"
} IRQn_Type;





# 1 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h" 1
# 90 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
# 1 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stdint.h" 1 3 4
# 9 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stdint.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 1 3 4
# 12 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 1 3 4







# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\features.h" 1 3 4
# 28 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\features.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\_newlib_version.h" 1 3 4
# 29 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\features.h" 2 3 4
# 9 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 2 3 4
# 27 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 3 4

# 27 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 41 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 63 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 89 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 120 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 146 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 168 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 186 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 200 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_default_types.h" 3 4
typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_intsup.h" 1 3 4
# 49 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_intsup.h" 3 4
       
       
       
       
       
       
       
# 201 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_stdint.h" 1 3 4
# 20 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 130 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 3 4
  typedef long long int intmax_t;
# 139 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdint.h" 3 4
  typedef long long unsigned int uintmax_t;
# 10 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stdint.h" 2 3 4
# 91 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h" 2
# 132 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"

# 132 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
typedef struct
{
  volatile uint32_t ISER[8];
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];
       uint32_t RESERVED4[56];
  volatile uint8_t IP[240];
       uint32_t RESERVED5[644];
  volatile uint32_t STIR;
} NVIC_Type;







typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;
  volatile uint32_t VTOR;
  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
  volatile uint8_t SHP[12];
  volatile uint32_t SHCSR;
  volatile uint32_t CFSR;
  volatile uint32_t HFSR;
  volatile uint32_t DFSR;
  volatile uint32_t MMFAR;
  volatile uint32_t BFAR;
  volatile uint32_t AFSR;
  volatile const uint32_t PFR[2];
  volatile const uint32_t DFR;
  volatile const uint32_t ADR;
  volatile const uint32_t MMFR[4];
  volatile const uint32_t ISAR[5];
} SCB_Type;
# 365 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 410 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
typedef struct
{
  volatile union
  {
    volatile uint8_t u8;
    volatile uint16_t u16;
    volatile uint32_t u32;
  } PORT [32];
       uint32_t RESERVED0[864];
  volatile uint32_t TER;
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;
       uint32_t RESERVED3[29];
  volatile uint32_t IWR;
  volatile uint32_t IRR;
  volatile uint32_t IMCR;
       uint32_t RESERVED4[43];
  volatile uint32_t LAR;
  volatile uint32_t LSR;
       uint32_t RESERVED5[6];
  volatile const uint32_t PID4;
  volatile const uint32_t PID5;
  volatile const uint32_t PID6;
  volatile const uint32_t PID7;
  volatile const uint32_t PID0;
  volatile const uint32_t PID1;
  volatile const uint32_t PID2;
  volatile const uint32_t PID3;
  volatile const uint32_t CID0;
  volatile const uint32_t CID1;
  volatile const uint32_t CID2;
  volatile const uint32_t CID3;
} ITM_Type;
# 503 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
typedef struct
{
       uint32_t RESERVED0;
  volatile const uint32_t ICTR;



       uint32_t RESERVED1;

} InterruptType_Type;
# 620 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
typedef struct
{
  volatile uint32_t DHCSR;
  volatile uint32_t DCRSR;
  volatile uint32_t DCRDR;
  volatile uint32_t DEMCR;
} CoreDebug_Type;
# 1204 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline void __enable_irq() { __asm volatile ("cpsie i"); }
static inline void __disable_irq() { __asm volatile ("cpsid i"); }

static inline void __enable_fault_irq() { __asm volatile ("cpsie f"); }
static inline void __disable_fault_irq() { __asm volatile ("cpsid f"); }

static inline void __NOP() { __asm volatile ("nop"); }
static inline void __WFI() { __asm volatile ("wfi"); }
static inline void __WFE() { __asm volatile ("wfe"); }
static inline void __SEV() { __asm volatile ("sev"); }
static inline void __ISB() { __asm volatile ("isb"); }
static inline void __DSB() { __asm volatile ("dsb"); }
static inline void __DMB() { __asm volatile ("dmb"); }
static inline void __CLREX() { __asm volatile ("clrex"); }
# 1227 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __get_PSP(void);
# 1237 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern void __set_PSP(uint32_t topOfProcStack);
# 1247 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __get_MSP(void);
# 1257 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern void __set_MSP(uint32_t topOfMainStack);
# 1266 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __get_BASEPRI(void);
# 1275 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern void __set_BASEPRI(uint32_t basePri);
# 1284 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __get_PRIMASK(void);
# 1293 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern void __set_PRIMASK(uint32_t priMask);
# 1302 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __get_FAULTMASK(void);
# 1311 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern void __set_FAULTMASK(uint32_t faultMask);
# 1320 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __get_CONTROL(void);
# 1329 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern void __set_CONTROL(uint32_t control);
# 1339 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __REV(uint32_t value);
# 1349 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __REV16(uint16_t value);
# 1359 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern int32_t __REVSH(int16_t value);
# 1369 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __RBIT(uint32_t value);
# 1379 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint8_t __LDREXB(uint8_t *addr);
# 1389 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint16_t __LDREXH(uint16_t *addr);
# 1399 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __LDREXW(uint32_t *addr);
# 1410 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __STREXB(uint8_t value, uint8_t *addr);
# 1421 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __STREXH(uint16_t value, uint16_t *addr);
# 1432 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern uint32_t __STREXW(uint32_t value, uint32_t *addr);
# 1468 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);

  reg_value = ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR;
  reg_value &= ~((0xFFFFul << 16) | (7ul << 8));
  reg_value = (reg_value |
                (0x5FA << 16) |
                (PriorityGroupTmp << 8));
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR = reg_value;
}
# 1489 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR & (7ul << 8)) >> 8);
}
# 1502 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));
}
# 1515 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));
}
# 1529 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000) + 0x0100))->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}
# 1542 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));
}
# 1555 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));
}
# 1569 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000) + 0x0100))->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}
# 1586 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }
  else {
    ((NVIC_Type *) ((0xE000E000) + 0x0100))->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff); }
}
# 1609 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4))); }
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000) + 0x0100))->IP[(uint32_t)(IRQn)] >> (8 - 4))); }
}
# 1634 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority & ((1 << (SubPriorityBits )) - 1)))
         );
}
# 1665 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority = (Priority ) & ((1 << (SubPriorityBits )) - 1);
}
# 1694 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if (ticks > (0xFFFFFFul << 0)) return (1);

  ((SysTick_Type *) ((0xE000E000) + 0x0010))->LOAD = (ticks & (0xFFFFFFul << 0)) - 1;
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->VAL = 0;
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->CTRL = (1ul << 2) |
                   (1ul << 1) |
                   (1ul << 0);
  return (0);
}
# 1719 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline void NVIC_SystemReset(void)
{
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR = ((0x5FA << 16) |
                 (((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR & (7ul << 8)) |
                 (1ul << 2));
  __DSB();
  while(1);
}
# 1742 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
extern volatile int ITM_RxBuffer;
# 1756 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((CoreDebug_Type *) (0xE000EDF0))->DEMCR & (1ul << 24)) &&
      (((ITM_Type *) (0xE0000000))->TCR & (1ul << 0)) &&
      (((ITM_Type *) (0xE0000000))->TER & (1ul << 0) ) )
  {
    while (((ITM_Type *) (0xE0000000))->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000))->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}
# 1778 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline int ITM_ReceiveChar (void) {
  int ch = -1;

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;
  }

  return (ch);
}
# 1798 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/CoreSupport/core_cm3.h"
static inline int ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);
  } else {
    return (1);
  }
}
# 483 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h" 2
# 1 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/system_stm32f10x.h" 1
# 53 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/system_stm32f10x.h"
extern uint32_t SystemCoreClock;
# 79 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/system_stm32f10x.h"
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);
# 484 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h" 2







typedef int32_t s32;
typedef int16_t s16;
typedef int8_t s8;

typedef const int32_t sc32;
typedef const int16_t sc16;
typedef const int8_t sc8;

typedef volatile int32_t vs32;
typedef volatile int16_t vs16;
typedef volatile int8_t vs8;

typedef volatile const int32_t vsc32;
typedef volatile const int16_t vsc16;
typedef volatile const int8_t vsc8;

typedef uint32_t u32;
typedef uint16_t u16;
typedef uint8_t u8;

typedef const uint32_t uc32;
typedef const uint16_t uc16;
typedef const uint8_t uc8;

typedef volatile uint32_t vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t vu8;

typedef volatile const uint32_t vuc32;
typedef volatile const uint16_t vuc16;
typedef volatile const uint8_t vuc8;

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;
# 546 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h"
typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t JOFR1;
  volatile uint32_t JOFR2;
  volatile uint32_t JOFR3;
  volatile uint32_t JOFR4;
  volatile uint32_t HTR;
  volatile uint32_t LTR;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t JSQR;
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  volatile uint32_t DR;
} ADC_TypeDef;





typedef struct
{
  uint32_t RESERVED0;
  volatile uint16_t DR1;
  uint16_t RESERVED1;
  volatile uint16_t DR2;
  uint16_t RESERVED2;
  volatile uint16_t DR3;
  uint16_t RESERVED3;
  volatile uint16_t DR4;
  uint16_t RESERVED4;
  volatile uint16_t DR5;
  uint16_t RESERVED5;
  volatile uint16_t DR6;
  uint16_t RESERVED6;
  volatile uint16_t DR7;
  uint16_t RESERVED7;
  volatile uint16_t DR8;
  uint16_t RESERVED8;
  volatile uint16_t DR9;
  uint16_t RESERVED9;
  volatile uint16_t DR10;
  uint16_t RESERVED10;
  volatile uint16_t RTCCR;
  uint16_t RESERVED11;
  volatile uint16_t CR;
  uint16_t RESERVED12;
  volatile uint16_t CSR;
  uint16_t RESERVED13[5];
  volatile uint16_t DR11;
  uint16_t RESERVED14;
  volatile uint16_t DR12;
  uint16_t RESERVED15;
  volatile uint16_t DR13;
  uint16_t RESERVED16;
  volatile uint16_t DR14;
  uint16_t RESERVED17;
  volatile uint16_t DR15;
  uint16_t RESERVED18;
  volatile uint16_t DR16;
  uint16_t RESERVED19;
  volatile uint16_t DR17;
  uint16_t RESERVED20;
  volatile uint16_t DR18;
  uint16_t RESERVED21;
  volatile uint16_t DR19;
  uint16_t RESERVED22;
  volatile uint16_t DR20;
  uint16_t RESERVED23;
  volatile uint16_t DR21;
  uint16_t RESERVED24;
  volatile uint16_t DR22;
  uint16_t RESERVED25;
  volatile uint16_t DR23;
  uint16_t RESERVED26;
  volatile uint16_t DR24;
  uint16_t RESERVED27;
  volatile uint16_t DR25;
  uint16_t RESERVED28;
  volatile uint16_t DR26;
  uint16_t RESERVED29;
  volatile uint16_t DR27;
  uint16_t RESERVED30;
  volatile uint16_t DR28;
  uint16_t RESERVED31;
  volatile uint16_t DR29;
  uint16_t RESERVED32;
  volatile uint16_t DR30;
  uint16_t RESERVED33;
  volatile uint16_t DR31;
  uint16_t RESERVED34;
  volatile uint16_t DR32;
  uint16_t RESERVED35;
  volatile uint16_t DR33;
  uint16_t RESERVED36;
  volatile uint16_t DR34;
  uint16_t RESERVED37;
  volatile uint16_t DR35;
  uint16_t RESERVED38;
  volatile uint16_t DR36;
  uint16_t RESERVED39;
  volatile uint16_t DR37;
  uint16_t RESERVED40;
  volatile uint16_t DR38;
  uint16_t RESERVED41;
  volatile uint16_t DR39;
  uint16_t RESERVED42;
  volatile uint16_t DR40;
  uint16_t RESERVED43;
  volatile uint16_t DR41;
  uint16_t RESERVED44;
  volatile uint16_t DR42;
  uint16_t RESERVED45;
} BKP_TypeDef;





typedef struct
{
  volatile uint32_t TIR;
  volatile uint32_t TDTR;
  volatile uint32_t TDLR;
  volatile uint32_t TDHR;
} CAN_TxMailBox_TypeDef;





typedef struct
{
  volatile uint32_t RIR;
  volatile uint32_t RDTR;
  volatile uint32_t RDLR;
  volatile uint32_t RDHR;
} CAN_FIFOMailBox_TypeDef;





typedef struct
{
  volatile uint32_t FR1;
  volatile uint32_t FR2;
} CAN_FilterRegister_TypeDef;





typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MSR;
  volatile uint32_t TSR;
  volatile uint32_t RF0R;
  volatile uint32_t RF1R;
  volatile uint32_t IER;
  volatile uint32_t ESR;
  volatile uint32_t BTR;
  uint32_t RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  uint32_t RESERVED1[12];
  volatile uint32_t FMR;
  volatile uint32_t FM1R;
  uint32_t RESERVED2;
  volatile uint32_t FS1R;
  uint32_t RESERVED3;
  volatile uint32_t FFA1R;
  uint32_t RESERVED4;
  volatile uint32_t FA1R;
  uint32_t RESERVED5[8];

  CAN_FilterRegister_TypeDef sFilterRegister[14];



} CAN_TypeDef;




typedef struct
{
  volatile uint32_t CFGR;
  volatile uint32_t OAR;
  volatile uint32_t PRES;
  volatile uint32_t ESR;
  volatile uint32_t CSR;
  volatile uint32_t TXD;
  volatile uint32_t RXD;
} CEC_TypeDef;





typedef struct
{
  volatile uint32_t DR;
  volatile uint8_t IDR;
  uint8_t RESERVED0;
  uint16_t RESERVED1;
  volatile uint32_t CR;
} CRC_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;



} DAC_TypeDef;





typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;
}DBGMCU_TypeDef;





typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;





typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;
       uint32_t RESERVED0[2];
  volatile uint32_t MACRWUFFR;
  volatile uint32_t MACPMTCSR;
       uint32_t RESERVED1[2];
  volatile uint32_t MACSR;
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;
       uint32_t RESERVED2[40];
  volatile uint32_t MMCCR;
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;
       uint32_t RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;
  volatile uint32_t MMCTGFMSCCR;
       uint32_t RESERVED4[5];
  volatile uint32_t MMCTGFCR;
       uint32_t RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
       uint32_t RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
       uint32_t RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
       uint32_t RESERVED8[567];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
       uint32_t RESERVED9[9];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;





typedef struct
{
  volatile uint32_t IMR;
  volatile uint32_t EMR;
  volatile uint32_t RTSR;
  volatile uint32_t FTSR;
  volatile uint32_t SWIER;
  volatile uint32_t PR;
} EXTI_TypeDef;





typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t SR;
  volatile uint32_t CR;
  volatile uint32_t AR;
  volatile uint32_t RESERVED;
  volatile uint32_t OBR;
  volatile uint32_t WRPR;
# 924 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h"
} FLASH_TypeDef;





typedef struct
{
  volatile uint16_t RDP;
  volatile uint16_t USER;
  volatile uint16_t Data0;
  volatile uint16_t Data1;
  volatile uint16_t WRP0;
  volatile uint16_t WRP1;
  volatile uint16_t WRP2;
  volatile uint16_t WRP3;
} OB_TypeDef;





typedef struct
{
  volatile uint32_t BTCR[8];
} FSMC_Bank1_TypeDef;





typedef struct
{
  volatile uint32_t BWTR[7];
} FSMC_Bank1E_TypeDef;





typedef struct
{
  volatile uint32_t PCR2;
  volatile uint32_t SR2;
  volatile uint32_t PMEM2;
  volatile uint32_t PATT2;
  uint32_t RESERVED0;
  volatile uint32_t ECCR2;
} FSMC_Bank2_TypeDef;





typedef struct
{
  volatile uint32_t PCR3;
  volatile uint32_t SR3;
  volatile uint32_t PMEM3;
  volatile uint32_t PATT3;
  uint32_t RESERVED0;
  volatile uint32_t ECCR3;
} FSMC_Bank3_TypeDef;





typedef struct
{
  volatile uint32_t PCR4;
  volatile uint32_t SR4;
  volatile uint32_t PMEM4;
  volatile uint32_t PATT4;
  volatile uint32_t PIO4;
} FSMC_Bank4_TypeDef;





typedef struct
{
  volatile uint32_t CRL;
  volatile uint32_t CRH;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t BRR;
  volatile uint32_t LCKR;
} GPIO_TypeDef;





typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;
} AFIO_TypeDef;




typedef struct
{
  volatile uint16_t CR1;
  uint16_t RESERVED0;
  volatile uint16_t CR2;
  uint16_t RESERVED1;
  volatile uint16_t OAR1;
  uint16_t RESERVED2;
  volatile uint16_t OAR2;
  uint16_t RESERVED3;
  volatile uint16_t DR;
  uint16_t RESERVED4;
  volatile uint16_t SR1;
  uint16_t RESERVED5;
  volatile uint16_t SR2;
  uint16_t RESERVED6;
  volatile uint16_t CCR;
  uint16_t RESERVED7;
  volatile uint16_t TRISE;
  uint16_t RESERVED8;
} I2C_TypeDef;





typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
} IWDG_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CSR;
} PWR_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CIR;
  volatile uint32_t APB2RSTR;
  volatile uint32_t APB1RSTR;
  volatile uint32_t AHBENR;
  volatile uint32_t APB2ENR;
  volatile uint32_t APB1ENR;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;
# 1102 "C:/Projects/BSP/STM32F1xxxx/CMSIS_StdPeriph/CM3/DeviceSupport/ST/STM32F10x/stm32f10x.h"
} RCC_TypeDef;





typedef struct
{
  volatile uint16_t CRH;
  uint16_t RESERVED0;
  volatile uint16_t CRL;
  uint16_t RESERVED1;
  volatile uint16_t PRLH;
  uint16_t RESERVED2;
  volatile uint16_t PRLL;
  uint16_t RESERVED3;
  volatile uint16_t DIVH;
  uint16_t RESERVED4;
  volatile uint16_t DIVL;
  uint16_t RESERVED5;
  volatile uint16_t CNTH;
  uint16_t RESERVED6;
  volatile uint16_t CNTL;
  uint16_t RESERVED7;
  volatile uint16_t ALRH;
  uint16_t RESERVED8;
  volatile uint16_t ALRL;
  uint16_t RESERVED9;
} RTC_TypeDef;





typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  uint32_t RESERVED0[2];
  volatile const uint32_t FIFOCNT;
  uint32_t RESERVED1[13];
  volatile uint32_t FIFO;
} SDIO_TypeDef;





typedef struct
{
  volatile uint16_t CR1;
  uint16_t RESERVED0;
  volatile uint16_t CR2;
  uint16_t RESERVED1;
  volatile uint16_t SR;
  uint16_t RESERVED2;
  volatile uint16_t DR;
  uint16_t RESERVED3;
  volatile uint16_t CRCPR;
  uint16_t RESERVED4;
  volatile uint16_t RXCRCR;
  uint16_t RESERVED5;
  volatile uint16_t TXCRCR;
  uint16_t RESERVED6;
  volatile uint16_t I2SCFGR;
  uint16_t RESERVED7;
  volatile uint16_t I2SPR;
  uint16_t RESERVED8;
} SPI_TypeDef;





typedef struct
{
  volatile uint16_t CR1;
  uint16_t RESERVED0;
  volatile uint16_t CR2;
  uint16_t RESERVED1;
  volatile uint16_t SMCR;
  uint16_t RESERVED2;
  volatile uint16_t DIER;
  uint16_t RESERVED3;
  volatile uint16_t SR;
  uint16_t RESERVED4;
  volatile uint16_t EGR;
  uint16_t RESERVED5;
  volatile uint16_t CCMR1;
  uint16_t RESERVED6;
  volatile uint16_t CCMR2;
  uint16_t RESERVED7;
  volatile uint16_t CCER;
  uint16_t RESERVED8;
  volatile uint16_t CNT;
  uint16_t RESERVED9;
  volatile uint16_t PSC;
  uint16_t RESERVED10;
  volatile uint16_t ARR;
  uint16_t RESERVED11;
  volatile uint16_t RCR;
  uint16_t RESERVED12;
  volatile uint16_t CCR1;
  uint16_t RESERVED13;
  volatile uint16_t CCR2;
  uint16_t RESERVED14;
  volatile uint16_t CCR3;
  uint16_t RESERVED15;
  volatile uint16_t CCR4;
  uint16_t RESERVED16;
  volatile uint16_t BDTR;
  uint16_t RESERVED17;
  volatile uint16_t DCR;
  uint16_t RESERVED18;
  volatile uint16_t DMAR;
  uint16_t RESERVED19;
} TIM_TypeDef;





typedef struct
{
  volatile uint16_t SR;
  uint16_t RESERVED0;
  volatile uint16_t DR;
  uint16_t RESERVED1;
  volatile uint16_t BRR;
  uint16_t RESERVED2;
  volatile uint16_t CR1;
  uint16_t RESERVED3;
  volatile uint16_t CR2;
  uint16_t RESERVED4;
  volatile uint16_t CR3;
  uint16_t RESERVED5;
  volatile uint16_t GTPR;
  uint16_t RESERVED6;
} USART_TypeDef;





typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;
# 12 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_gpio.h" 1
# 58 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_gpio.h"
typedef enum
{
  GPIO_Speed_10MHz = 1,
  GPIO_Speed_2MHz,
  GPIO_Speed_50MHz
}GPIOSpeed_TypeDef;







typedef enum
{ GPIO_Mode_AIN = 0x0,
  GPIO_Mode_IN_FLOATING = 0x04,
  GPIO_Mode_IPD = 0x28,
  GPIO_Mode_IPU = 0x48,
  GPIO_Mode_Out_OD = 0x14,
  GPIO_Mode_Out_PP = 0x10,
  GPIO_Mode_AF_OD = 0x1C,
  GPIO_Mode_AF_PP = 0x18
}GPIOMode_TypeDef;
# 91 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_gpio.h"
typedef struct
{
  uint16_t GPIO_Pin;


  GPIOSpeed_TypeDef GPIO_Speed;


  GPIOMode_TypeDef GPIO_Mode;

}GPIO_InitTypeDef;






typedef enum
{ Bit_RESET = 0,
  Bit_SET
}BitAction;
# 349 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_gpio.h"
void GPIO_DeInit(GPIO_TypeDef* GPIOx);
void GPIO_AFIODeInit(void);
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_EventOutputConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_EventOutputCmd(FunctionalState NewState);
void GPIO_PinRemapConfig(uint32_t GPIO_Remap, FunctionalState NewState);
void GPIO_EXTILineConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_ETH_MediaInterfaceConfig(uint32_t GPIO_ETH_MediaInterface);
# 13 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_rcc.h" 1
# 46 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_rcc.h"
typedef struct
{
  uint32_t SYSCLK_Frequency;
  uint32_t HCLK_Frequency;
  uint32_t PCLK1_Frequency;
  uint32_t PCLK2_Frequency;
  uint32_t ADCCLK_Frequency;
}RCC_ClocksTypeDef;
# 647 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_rcc.h"
void RCC_DeInit(void);
void RCC_HSEConfig(uint32_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);
# 667 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_rcc.h"
void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLK1Config(uint32_t RCC_HCLK);
void RCC_PCLK2Config(uint32_t RCC_HCLK);
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);


 void RCC_USBCLKConfig(uint32_t RCC_USBCLKSource);




void RCC_ADCCLKConfig(uint32_t RCC_PCLK2);






void RCC_LSEConfig(uint8_t RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);
void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);





void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(uint8_t RCC_MCO);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);
# 14 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_spi.h" 1
# 50 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_spi.h"
typedef struct
{
  uint16_t SPI_Direction;


  uint16_t SPI_Mode;


  uint16_t SPI_DataSize;


  uint16_t SPI_CPOL;


  uint16_t SPI_CPHA;


  uint16_t SPI_NSS;



  uint16_t SPI_BaudRatePrescaler;





  uint16_t SPI_FirstBit;


  uint16_t SPI_CRCPolynomial;
}SPI_InitTypeDef;





typedef struct
{

  uint16_t I2S_Mode;


  uint16_t I2S_Standard;


  uint16_t I2S_DataFormat;


  uint16_t I2S_MCLKOutput;


  uint32_t I2S_AudioFreq;


  uint16_t I2S_CPOL;

}I2S_InitTypeDef;
# 446 "C:/Projects/BSP/STM32F1xxxx/STM32F10x_StdPeriph_Driver/inc/stm32f10x_spi.h"
void SPI_I2S_DeInit(SPI_TypeDef* SPIx);
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct);
void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct);
void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct);
void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct);
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void I2S_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT, FunctionalState NewState);
void SPI_I2S_DMACmd(SPI_TypeDef* SPIx, uint16_t SPI_I2S_DMAReq, FunctionalState NewState);
void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data);
uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx);
void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, uint16_t SPI_NSSInternalSoft);
void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_DataSizeConfig(SPI_TypeDef* SPIx, uint16_t SPI_DataSize);
void SPI_TransmitCRC(SPI_TypeDef* SPIx);
void SPI_CalculateCRC(SPI_TypeDef* SPIx, FunctionalState NewState);
uint16_t SPI_GetCRC(SPI_TypeDef* SPIx, uint8_t SPI_CRC);
uint16_t SPI_GetCRCPolynomial(SPI_TypeDef* SPIx);
void SPI_BiDirectionalLineConfig(SPI_TypeDef* SPIx, uint16_t SPI_Direction);
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
void SPI_I2S_ClearFlag(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);
void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);
# 15 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2

# 1 "FreeRTOS/include/FreeRTOS.h" 1
# 76 "FreeRTOS/include/FreeRTOS.h"
# 1 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 3 4

# 149 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 3 4
typedef unsigned int wchar_t;
# 426 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 77 "FreeRTOS/include/FreeRTOS.h" 2
# 98 "FreeRTOS/include/FreeRTOS.h"
# 1 "FreeRTOS/include/FreeRTOSConfig.h" 1
# 99 "FreeRTOS/include/FreeRTOS.h" 2


# 1 "FreeRTOS/include/projdefs.h" 1
# 77 "FreeRTOS/include/projdefs.h"

# 77 "FreeRTOS/include/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 102 "FreeRTOS/include/FreeRTOS.h" 2


# 1 "FreeRTOS/include/portable.h" 1
# 87 "FreeRTOS/include/portable.h"
# 1 "FreeRTOS/include/deprecated_definitions.h" 1
# 88 "FreeRTOS/include/portable.h" 2






# 1 "FreeRTOS/include/portmacro.h" 1
# 97 "FreeRTOS/include/portmacro.h"
typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;





 typedef uint32_t TickType_t;
# 139 "FreeRTOS/include/portmacro.h"
extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );
# 159 "FreeRTOS/include/portmacro.h"
 extern void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime );
# 172 "FreeRTOS/include/portmacro.h"
 __attribute__( ( always_inline ) ) static inline uint8_t ucPortCountLeadingZeros( uint32_t ulBitmap )
 {
 uint8_t ucReturn;

  __asm volatile ( "clz %0, %1" : "=r" ( ucReturn ) : "r" ( ulBitmap ) );
  return ucReturn;
 }
# 198 "FreeRTOS/include/portmacro.h"
 void vPortValidateInterruptPriority( void );
# 211 "FreeRTOS/include/portmacro.h"
inline __attribute__(( always_inline)) static BaseType_t xPortIsInsideInterrupt( void )
{
uint32_t ulCurrentInterrupt;
BaseType_t xReturn;


 __asm volatile( "mrs %0, ipsr" : "=r"( ulCurrentInterrupt ) );

 if( ulCurrentInterrupt == 0 )
 {
  xReturn = ( ( BaseType_t ) 0 );
 }
 else
 {
  xReturn = ( ( BaseType_t ) 1 );
 }

 return xReturn;
}



inline __attribute__(( always_inline)) static void vPortRaiseBASEPRI( void )
{
uint32_t ulNewBASEPRI;

 __asm volatile
 (
  "	mov %0, %1												\n"
  "	msr basepri, %0											\n"
  "	isb														\n"
  "	dsb														\n"
  :"=r" (ulNewBASEPRI) : "i" ( 191 )
 );
}



inline __attribute__(( always_inline)) static uint32_t ulPortRaiseBASEPRI( void )
{
uint32_t ulOriginalBASEPRI, ulNewBASEPRI;

 __asm volatile
 (
  "	mrs %0, basepri											\n"
  "	mov %1, %2												\n"
  "	msr basepri, %1											\n"
  "	isb														\n"
  "	dsb														\n"
  :"=r" (ulOriginalBASEPRI), "=r" (ulNewBASEPRI) : "i" ( 191 )
 );



 return ulOriginalBASEPRI;
}


inline __attribute__(( always_inline)) static void vPortSetBASEPRI( uint32_t ulNewMaskValue )
{
 __asm volatile
 (
  "	msr basepri, %0	" :: "r" ( ulNewMaskValue )
 );
}
# 95 "FreeRTOS/include/portable.h" 2
# 133 "FreeRTOS/include/portable.h"
# 1 "FreeRTOS/include/mpu_wrappers.h" 1
# 134 "FreeRTOS/include/portable.h" 2
# 144 "FreeRTOS/include/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;



typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 165 "FreeRTOS/include/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 105 "FreeRTOS/include/FreeRTOS.h" 2
# 874 "FreeRTOS/include/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 4 ];
};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{
 UBaseType_t uxDummy1;
 void *pvDummy2;
 StaticMiniListItem_t xDummy3;
} StaticList_t;
# 910 "FreeRTOS/include/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];
# 930 "FreeRTOS/include/FreeRTOS.h"
  UBaseType_t uxDummy12[ 2 ];
# 945 "FreeRTOS/include/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;





} StaticTask_t;
# 968 "FreeRTOS/include/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];
# 995 "FreeRTOS/include/FreeRTOS.h"
} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1012 "FreeRTOS/include/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;
# 1025 "FreeRTOS/include/FreeRTOS.h"
} StaticEventGroup_t;
# 1041 "FreeRTOS/include/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 UBaseType_t uxDummy4;
 void *pvDummy5[ 2 ];
# 1056 "FreeRTOS/include/FreeRTOS.h"
} StaticTimer_t;
# 17 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "FreeRTOS/include/task.h" 1
# 78 "FreeRTOS/include/task.h"
# 1 "FreeRTOS/include/list.h" 1
# 181 "FreeRTOS/include/list.h"
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 void * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 386 "FreeRTOS/include/list.h"
void vListInitialise( List_t * const pxList ) ;
# 397 "FreeRTOS/include/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 410 "FreeRTOS/include/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 431 "FreeRTOS/include/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 446 "FreeRTOS/include/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 79 "FreeRTOS/include/task.h" 2
# 103 "FreeRTOS/include/task.h"
typedef void * TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted,
 eInvalid
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];
} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 360 "FreeRTOS/include/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 602 "FreeRTOS/include/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 643 "FreeRTOS/include/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 695 "FreeRTOS/include/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 754 "FreeRTOS/include/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 779 "FreeRTOS/include/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 826 "FreeRTOS/include/task.h"
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
# 852 "FreeRTOS/include/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 908 "FreeRTOS/include/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 950 "FreeRTOS/include/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1001 "FreeRTOS/include/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1050 "FreeRTOS/include/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1079 "FreeRTOS/include/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1112 "FreeRTOS/include/task.h"
void vTaskStartScheduler( void ) ;
# 1168 "FreeRTOS/include/task.h"
void vTaskEndScheduler( void ) ;
# 1219 "FreeRTOS/include/task.h"
void vTaskSuspendAll( void ) ;
# 1273 "FreeRTOS/include/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1288 "FreeRTOS/include/task.h"
TickType_t xTaskGetTickCount( void ) ;
# 1304 "FreeRTOS/include/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1318 "FreeRTOS/include/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1331 "FreeRTOS/include/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1347 "FreeRTOS/include/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1368 "FreeRTOS/include/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1421 "FreeRTOS/include/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1430 "FreeRTOS/include/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1529 "FreeRTOS/include/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
# 1576 "FreeRTOS/include/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1630 "FreeRTOS/include/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1711 "FreeRTOS/include/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1802 "FreeRTOS/include/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 1879 "FreeRTOS/include/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 1980 "FreeRTOS/include/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2049 "FreeRTOS/include/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2065 "FreeRTOS/include/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2086 "FreeRTOS/include/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2119 "FreeRTOS/include/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2133 "FreeRTOS/include/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2159 "FreeRTOS/include/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2170 "FreeRTOS/include/task.h"
void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2237 "FreeRTOS/include/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
# 2253 "FreeRTOS/include/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





void *pvTaskIncrementMutexHeldCount( void ) ;
# 18 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "FreeRTOS/include/semphr.h" 1
# 77 "FreeRTOS/include/semphr.h"
# 1 "FreeRTOS/include/queue.h" 1
# 88 "FreeRTOS/include/queue.h"
typedef void * QueueHandle_t;






typedef void * QueueSetHandle_t;






typedef void * QueueSetMemberHandle_t;
# 692 "FreeRTOS/include/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 821 "FreeRTOS/include/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 1013 "FreeRTOS/include/queue.h"
BaseType_t xQueueGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, const BaseType_t xJustPeek ) ;
# 1028 "FreeRTOS/include/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 1045 "FreeRTOS/include/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 1059 "FreeRTOS/include/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1440 "FreeRTOS/include/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1530 "FreeRTOS/include/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1549 "FreeRTOS/include/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
void* xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t pxMutex ) ;
# 1639 "FreeRTOS/include/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1699 "FreeRTOS/include/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1723 "FreeRTOS/include/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1742 "FreeRTOS/include/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1778 "FreeRTOS/include/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 78 "FreeRTOS/include/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 19 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "FreeRTOS/include/queue.h" 1
# 20 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "NRF24/nrf24.h" 1
# 18 "NRF24/nrf24.h"
# 1 "NRF24/RF24_config.h" 1
# 19 "NRF24/nrf24.h" 2
# 31 "NRF24/nrf24.h"
typedef enum { RF24_PA_MIN = 0,RF24_PA_LOW, RF24_PA_HIGH, RF24_PA_MAX, RF24_PA_ERROR } rf24_pa_dbm_e ;






typedef enum { RF24_1MBPS = 0, RF24_2MBPS, RF24_250KBPS } rf24_datarate_e;






typedef enum { RF24_CRC_DISABLED = 0, RF24_CRC_8, RF24_CRC_16 } rf24_crclength_e;





  uint16_t ce_pin;
  uint16_t csn_pin;
  uint16_t spi_speed;

  uint8_t spi_rxbuff[32+1] ;
  uint8_t spi_txbuff[32+1] ;

  uint8_t p_variant;
  uint8_t payload_size;
  uint8_t dynamic_payloads_enabled;
  uint8_t pipe0_reading_address[5];
  uint8_t addr_width;
  void endTransaction();
  void beginTransaction();






  void delayMicroseconds (uint64_t ticks);







  uint8_t radio_begin(void);




  uint8_t isChipConnected();
# 101 "NRF24/nrf24.h"
  void radio_startListening(void);
# 112 "NRF24/nrf24.h"
  void radio_stopListening(void);
# 123 "NRF24/nrf24.h"
  uint8_t radio_available(void);
# 147 "NRF24/nrf24.h"
  void radio_read( void* buf, uint8_t len );
# 172 "NRF24/nrf24.h"
  uint8_t radio_write( const void* buf, uint8_t len );
# 199 "NRF24/nrf24.h"
  void radio_openWritingPipe(const uint8_t address);
# 229 "NRF24/nrf24.h"
  void radio_openReadingPipe(uint8_t child, const uint8_t address);
# 253 "NRF24/nrf24.h"
  void printDetails(void);
# 271 "NRF24/nrf24.h"
  uint8_t radio_available_in_pipe(uint8_t pipe_num);





  uint8_t rxFifoFull();
# 296 "NRF24/nrf24.h"
  void powerDown(void);







  void powerUp(void) ;
# 320 "NRF24/nrf24.h"
  uint8_t radio_write_multicast( const void* buf, uint8_t len, const uint8_t multicast );
# 350 "NRF24/nrf24.h"
  uint8_t writeFast( const void* buf, uint8_t len );
# 363 "NRF24/nrf24.h"
  uint8_t writeFast_mcast( const void* buf, uint8_t len, const uint8_t multicast );
# 391 "NRF24/nrf24.h"
  uint8_t writeBlocking( const void* buf, uint8_t len, uint32_t timeout );
# 419 "NRF24/nrf24.h"
   uint8_t radio_txStandBy();
# 437 "NRF24/nrf24.h"
   uint8_t txStandBy_timeout(uint32_t timeout, uint8_t startTx);
# 457 "NRF24/nrf24.h"
  void writeAckPayload(uint8_t pipe, const void* buf, uint8_t len);
# 467 "NRF24/nrf24.h"
  uint8_t isAckPayloadAvailable(void);
# 493 "NRF24/nrf24.h"
  void startFastWrite( const void* buf, uint8_t len, const uint8_t multicast);
# 515 "NRF24/nrf24.h"
  void startWrite( const void* buf, uint8_t len, const uint8_t multicast );
# 532 "NRF24/nrf24.h"
   void reUseTX();







  uint8_t radio_flush_tx(void);
# 550 "NRF24/nrf24.h"
  uint8_t testCarrier(void);
# 569 "NRF24/nrf24.h"
  uint8_t testRPD(void) ;







  void closeReadingPipe( uint8_t pipe ) ;
# 600 "NRF24/nrf24.h"
    uint8_t failureDetected;
# 621 "NRF24/nrf24.h"
  void setAddressWidth(uint8_t a_width);
# 630 "NRF24/nrf24.h"
  void radio_setRetries(uint8_t delay, uint8_t count);






  void setChannel(uint8_t channel);






  uint8_t getChannel(void);
# 658 "NRF24/nrf24.h"
  void setPayloadSize(uint8_t size);
# 667 "NRF24/nrf24.h"
  uint8_t getPayloadSize(void);
# 689 "NRF24/nrf24.h"
  uint8_t radio_getDynamicPayloadSize(void);
# 700 "NRF24/nrf24.h"
  void enableAckPayload(void);
# 709 "NRF24/nrf24.h"
  void enableDynamicPayloads(void);
# 720 "NRF24/nrf24.h"
  void disableDynamicPayloads(void);
# 734 "NRF24/nrf24.h"
  void enableDynamicAck();







  uint8_t isPVariant(void) ;
# 752 "NRF24/nrf24.h"
  void setAutoAck(uint8_t enable);
# 763 "NRF24/nrf24.h"
  void setAutoAck_pipe( uint8_t pipe, uint8_t enable ) ;
# 776 "NRF24/nrf24.h"
  void setPALevel ( uint8_t level );
# 786 "NRF24/nrf24.h"
   uint8_t getPALevel( void );
# 796 "NRF24/nrf24.h"
  uint8_t setDataRate(rf24_datarate_e speed);
# 805 "NRF24/nrf24.h"
  rf24_datarate_e getDataRate( void ) ;






  void setCRCLength(rf24_crclength_e length);






  rf24_crclength_e getCRCLength(void);






  void disableCRC( void ) ;
# 844 "NRF24/nrf24.h"
  void maskIRQ(uint8_t tx_ok,uint8_t tx_fail,uint8_t rx_ready);
# 858 "NRF24/nrf24.h"
  uint32_t txDelay;
# 869 "NRF24/nrf24.h"
  uint32_t csDelay;
# 885 "NRF24/nrf24.h"
  uint8_t radio_flush_rx(void);
# 898 "NRF24/nrf24.h"
  void csn(uint8_t mode);







  void ce(uint8_t level);
# 916 "NRF24/nrf24.h"
  uint8_t read_register_buf(uint8_t reg, uint8_t* buf, uint8_t len);







  uint8_t read_register(uint8_t reg);
# 934 "NRF24/nrf24.h"
  uint8_t write_register_buf(uint8_t reg, const uint8_t* buf, uint8_t len);
# 943 "NRF24/nrf24.h"
  uint8_t write_register(uint8_t reg, uint8_t value);
# 954 "NRF24/nrf24.h"
  uint8_t write_payload(const void* buf, uint8_t len, const uint8_t writeType);
# 965 "NRF24/nrf24.h"
  uint8_t read_payload(void* buf, uint8_t len);






  uint8_t get_status(void);
# 1025 "NRF24/nrf24.h"
  void toggle_features(void);





  uint8_t spiTrans(uint8_t cmd);
# 21 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "NRF24/nRF24L01.h" 1
# 22 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "../../include/NRP.h" 1
# 37 "../../include/NRP.h"
# 1 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stdbool.h" 1 3 4
# 38 "../../include/NRP.h" 2
# 48 "../../include/NRP.h"
static const uint8_t rx_addr = 0x07;




enum Route { Host = 0, Metrics, NextHop, Timer };
enum PacketType { ptData = 0, uRIP_update, uRIP_discovery, MCUcontrol } PacketType;

typedef struct NRP_packet
{
    uint8_t version : 4;
    uint8_t type : 4;
    uint8_t destination;
    uint8_t source;
    uint8_t ttl;
    uint8_t data[28];
    uint8_t _length;
} NRP_packet;

extern void CMD_parser(NRP_packet packet);
extern 
# 68 "../../include/NRP.h" 3 4
      _Bool 
# 68 "../../include/NRP.h"
           radio_send(uint64_t address, const void* buf, uint8_t len, const 
# 68 "../../include/NRP.h" 3 4
                                                                            _Bool 
# 68 "../../include/NRP.h"
                                                                                 multicast);


# 70 "../../include/NRP.h" 3 4
_Bool 
# 70 "../../include/NRP.h"
    NRP_send_packet(uint8_t host, NRP_packet packet);
void NRP_parsePacket(NRP_packet packet);
char* c_printDate();
# 23 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "../../include/RIP.h" 1
# 20 "../../include/RIP.h"
extern unsigned int routingTableCount;
extern unsigned int routingTable[256][4];

uint8_t uRIP_lookuphost(uint8_t host);
void uRIP_flush();
uint8_t uRIP_updateRecord(uint8_t route, uint8_t metrics, uint8_t nexthop);
void uRIP_sendRoutes(uint8_t host);

# 27 "../../include/RIP.h" 3 4
_Bool 
# 27 "../../include/RIP.h"
    uRIP_deleteRoute(uint8_t route);
void uRIP_garbageCollector();
void uRIP_sortDatabase();
void uRIP_sendDiscoveryReq();
# 24 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 1 3 4
# 10 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\_ansi.h" 1 3 4
# 15 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\_ansi.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\newlib.h" 1 3 4
# 16 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\_ansi.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\config.h" 1 3 4



# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\ieeefp.h" 1 3 4
# 5 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\config.h" 2 3 4
# 17 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\_ansi.h" 2 3 4
# 11 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 1 3 4
# 13 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\_ansi.h" 1 3 4
# 14 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 1 3 4
# 15 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_types.h" 1 3 4
# 22 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_types.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\newlib.h" 1 3 4
# 23 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_types.h" 2 3 4

# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_types.h" 1 3 4
# 25 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_types.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\lock.h" 1 3 4






# 6 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\lock.h" 3 4
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 26 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_types.h" 2 3 4


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 88 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_types.h" 3 4
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 129 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_types.h" 3 4
typedef unsigned int __size_t;
# 145 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_types.h" 3 4
typedef signed int _ssize_t;
# 156 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_types.h" 3 4
typedef _ssize_t __ssize_t;


# 1 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 1 3 4
# 357 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_types.h" 2 3 4



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;



typedef unsigned long __clock_t;


typedef long __time_t;


typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 2 3 4






typedef unsigned long __ULong;
# 38 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 3 4
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 3 4
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 3 4
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 3 4
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 3 4
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 3 4
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 569 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 3 4
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 766 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\reent.h" 3 4
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\cdefs.h" 1 3 4
# 45 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\cdefs.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 1 3 4
# 46 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\cdefs.h" 2 3 4
# 13 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 2 3 4




# 1 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 1 3 4
# 18 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 2 3 4


# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_locale.h" 1 3 4





# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\newlib.h" 1 3 4
# 7 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_locale.h" 2 3 4


struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 2 3 4




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void * restrict, const void * restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);






char *strtok_r (char *restrict, const char *restrict, char **restrict);


int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);


void explicit_bzero (void *, size_t);
int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


int ffs (int);
char *index (const char *, int);


void * memccpy (void * restrict, const void * restrict, int, size_t);
# 86 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 3 4
char *rindex (const char *, int);


char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);


int strcasecmp (const char *, const char *);






char *strdup (const char *);

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t);

char *_strndup_r (struct _reent *, const char *, size_t);
# 121 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 3 4
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


int strncasecmp (const char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 192 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\string.h" 1 3 4
# 193 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\string.h" 2 3 4


# 25 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2

# 1 "../../include/additionals.h" 1
# 48 "../../include/additionals.h"

# 48 "../../include/additionals.h"
uint64_t convertPipeAddress(uint8_t address);
char* c_printDate();
# 27 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 1 3 4
# 36 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 1 3 4
# 37 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 2 3 4



# 1 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stdarg.h" 3 4

# 40 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 2 3 4





typedef __gnuc_va_list va_list;
# 61 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 1 3 4
# 28 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 3 4
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\lib\\gcc\\arm-eabi\\6.2.0\\include\\stddef.h" 1 3 4
# 63 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 2 3 4




# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\endian.h" 1 3 4





# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\_endian.h" 1 3 4
# 7 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\endian.h" 2 3 4
# 68 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\select.h" 1 3 4
# 25 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\select.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_sigset.h" 1 3 4
# 41 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_sigset.h" 3 4
typedef unsigned long __sigset_t;
# 26 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\select.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_timeval.h" 1 3 4
# 35 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_timeval.h" 3 4
typedef __suseconds_t suseconds_t;




typedef long time_t;
# 52 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_timeval.h" 3 4
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 27 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\select.h" 2 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\timespec.h" 1 3 4
# 38 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\timespec.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_timespec.h" 1 3 4
# 45 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\_timespec.h" 3 4
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\timespec.h" 2 3 4
# 58 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\timespec.h" 3 4
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 28 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\select.h" 2 3 4



typedef __sigset_t sigset_t;
# 45 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\select.h" 3 4
typedef unsigned long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 71 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\select.h" 3 4


int select (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 69 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 2 3 4




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;
# 87 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 3 4
typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 135 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 3 4
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 3 4
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 236 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 3 4
typedef __int64_t sbintime_t;
# 465 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 3 4
# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\machine\\types.h" 1 3 4
# 466 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\types.h" 2 3 4
# 62 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 2 3 4




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\sys\\stdio.h" 1 3 4
# 80 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 2 3 4
# 181 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4
char * ctermid (char *);




FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *);

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *restrict, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void * restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 257 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4
int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);







int snprintf (char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 284 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
# 339 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4
int dprintf (int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;



int renameat (int, const char *, int, const char *);






int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void * restrict , size_t _size, size_t _n, FILE *);
# 574 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 598 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;
# 684 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 767 "c:\\sysgcc\\arm-eabi\\arm-eabi\\sys-include\\stdio.h" 3 4

# 28 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 2



# 30 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
unsigned char data[] = { 0xAA, 0xBA, 0xCA, 0xFA };

SemaphoreHandle_t xSPIsemaphore;






# 38 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
_Bool 
# 38 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
    radio_send(uint64_t address, const void* buf, uint8_t len, const 
# 38 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
                                                                     _Bool 
# 38 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
                                                                          multicast) {
 vPortEnterCritical();
 
# 40 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
_Bool 
# 40 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
     rval;
 radio_openWritingPipe(0xA0A1F0F100LL + address);
 radio_stopListening();
 rval = radio_write_multicast(buf, len, multicast);
 ((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000))->ODR ^= ((uint16_t)0x2000);
 radio_startListening();
 vPortExitCritical();
 return rval;
}

void nrf24_setupPins(void) {
 SPI_InitTypeDef SPI_InitStructure;
 GPIO_InitTypeDef GPIO_InitStructure;


 RCC_APB2PeriphClockCmd(((uint32_t)0x00000004), ENABLE);
 GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0020) | ((uint16_t)0x0040) | ((uint16_t)0x0080);
 GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
 GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
 GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);

 GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0008) | ((uint16_t)0x0010);
 GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
 GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
 GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);

 RCC_APB2PeriphClockCmd(((uint32_t)0x00000008), ENABLE);
 GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0001) | ((uint16_t)0x0002);
 GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
 GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
 GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)), &GPIO_InitStructure);

 RCC_APB2PeriphClockCmd(((uint32_t)0x00001000), ENABLE);

 SPI_Cmd(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), DISABLE);

 SPI_InitStructure.SPI_Direction = ((uint16_t)0x0000);
 SPI_InitStructure.SPI_Mode = ((uint16_t)0x0104);
 SPI_InitStructure.SPI_DataSize = ((uint16_t)0x0000);
 SPI_InitStructure.SPI_CPOL = ((uint16_t)0x0000);
 SPI_InitStructure.SPI_CPHA = ((uint16_t)0x0000);
 SPI_InitStructure.SPI_NSS = ((uint16_t)0x0200);
 SPI_InitStructure.SPI_BaudRatePrescaler = ((uint16_t)0x0008);
 SPI_InitStructure.SPI_FirstBit = ((uint16_t)0x0000);
 SPI_InitStructure.SPI_CRCPolynomial = 7;
 SPI_Init(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), &SPI_InitStructure);

 SPI_Cmd(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000)), ENABLE);
}

uint8_t radio_is_interrupt() {
 if (!GPIO_ReadInputDataBit(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0C00)), ((uint16_t)0x0001))) {
  if (xQueueGenericReceive( ( QueueHandle_t ) ( xSPIsemaphore ), 
# 92 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
     ((void *)0)
# 92 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
     , ( (TickType_t) 1000 ), ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 1 )) {
   if (read_register(0x07) & (1 << (6))) {
    xQueueGenericSend( ( QueueHandle_t ) ( xSPIsemaphore ), 
# 94 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
   ((void *)0)
# 94 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return 1;
   }
   xQueueGenericSend( ( QueueHandle_t ) ( xSPIsemaphore ), 
# 97 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
  ((void *)0)
# 97 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
  , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
  }
 }
 return 0;
}
void CMD_parser(NRP_packet packet)
{
 if ((packet.type == ptData) && (packet._length == 1))
 {
  if (packet.data[0] == 8)
  {
   NVIC_SystemReset();
  }
  if (packet.data[0] == 3)
  {
   NRP_packet packet_send;
   packet_send.version = 1;
   packet_send.type = ptData;
   packet_send.source = rx_addr;
   packet_send.destination = packet.source;
   packet_send.ttl = 0;

   uint8_t j;
   for (unsigned int i = 0; i < routingTableCount * 3; i++) {
    j = i % 27;

    packet_send.data[j] = routingTable[i / 3][i % 3];
    if ((j == 26) || (i == (routingTableCount * 3) - 1))
    {
     packet_send._length = j + 1;
     NRP_send_packet(packet.source, packet_send);
    }
   }
  }
  if (packet.data[0] == 5)
  {
   NRP_packet packet_send;
   packet_send.version = 1;
   packet_send.type = ptData;
   packet_send.source = rx_addr;
   packet_send.destination = packet.source;
   packet_send.ttl = 0;
   packet_send._length = 1;
   packet_send.data[0] = 0xA0;
   uint8_t route_id = uRIP_lookuphost(packet.source);

   NRP_send_packet(routingTable[route_id][NextHop], packet_send);
  }
 }
}
void vScanRF(void *pvParameters) {
 uint8_t receivePayload[32];
 static uint8_t len;
 NRP_packet packet;

 for (;;) {
  if (radio_is_interrupt()) {
   if (xQueueGenericReceive( ( QueueHandle_t ) ( xSPIsemaphore ), 
# 154 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
      ((void *)0)
# 154 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
      , ( (TickType_t) 1000 ), ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 1 )) {


    len = radio_getDynamicPayloadSize();
    radio_read(receivePayload, len);
    if ((receivePayload[0] & 0x0F) != uRIP_discovery)
    {
     asm("bkpt");
    }

    if ((receivePayload[0] >> 4) == 1 && len >= 0) {
     packet.version = receivePayload[0] >> 4;
     packet.type = receivePayload[0] & 0x0F;
     packet.destination = receivePayload[1];
     packet.source = receivePayload[2];
     packet.ttl = receivePayload[3];
     packet._length = len - 4;

     if ((uint8_t)packet._length > 0) {
      for (int i = 0; i < packet._length; i++) {
       packet.data[i] = receivePayload[4 + i];
      }
     }
     NRP_parsePacket(packet);
    }
    else {

    }


    xQueueGenericSend( ( QueueHandle_t ) ( xSPIsemaphore ), 
# 184 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
   ((void *)0)
# 184 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
   }
  }
 }
}
static uint8_t nrf_status;
void vDiscovery(void *pvParameters) {
 while (1) {
  if (xQueueGenericReceive( ( QueueHandle_t ) ( xSPIsemaphore ), 
# 192 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
     ((void *)0)
# 192 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
     , ( (TickType_t) 1000 ), ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 1 )) {




   uRIP_sendDiscoveryReq();
   xQueueGenericSend( ( QueueHandle_t ) ( xSPIsemaphore ), 
# 198 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
  ((void *)0)
# 198 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
  , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
  }
  vTaskDelay(1000);
 }
}

void vGarbageCollerctor(void *pvParameters) {
 while (1) {
  if (xQueueGenericReceive( ( QueueHandle_t ) ( xSPIsemaphore ), 
# 206 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
     ((void *)0)
# 206 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
     , ( (TickType_t) 1000 ), ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 1 )) {
   uRIP_garbageCollector();
   xQueueGenericSend( ( QueueHandle_t ) ( xSPIsemaphore ), 
# 208 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
  ((void *)0)
# 208 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
  , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
  }
   vTaskDelay(1000);
 }
}

void vApplicationStackOverflowHook(TaskHandle_t xTask, signed char *pcTaskName) {
 asm("bkpt");
}

int main(void) {
 GPIO_InitTypeDef GPIO_InitStructure;

 RCC_APB2PeriphClockCmd(((uint32_t)0x00000010), ENABLE);
 GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x2000);
 GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
 GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
 GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x1000)), &GPIO_InitStructure);


 nrf24_setupPins();


 for (unsigned long j = 0; j < SystemCoreClock / 1000 * 1.5; ++j) {
  __NOP();
 }
 radio_begin();
 setChannel(40);
 setPALevel(RF24_PA_MAX);
 setDataRate(RF24_2MBPS);
 setAutoAck(1);
 setAutoAck_pipe(1, 0);
 enableDynamicPayloads();
 setPayloadSize(32);
 radio_setRetries(5, 15);
 setCRCLength(RF24_CRC_16);
 for (unsigned long j = 0; j < 500000LL; ++j) {
  __NOP();
 }

 uRIP_flush();

 radio_openWritingPipe(0x00);
 radio_openReadingPipe(1, 0x00);
 radio_openReadingPipe(2, rx_addr);
 radio_flush_tx();
 radio_flush_rx();
 radio_startListening();

 xSPIsemaphore = xQueueCreateMutex( ( ( uint8_t ) 1U ) );

 xTaskCreate(vScanRF, "vScanRF", (uint16_t) 240, 
# 259 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
                                                ((void *)0)
# 259 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
                                                    , ( ( UBaseType_t ) 0U ) + 1, (TaskHandle_t *) 
# 259 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
                                                                                            ((void *)0)
# 259 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
                                                                                                );
 xTaskCreate(vDiscovery, "vDiscovery", ( ( unsigned short ) 120 )+120, 
# 260 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
                                                                    ((void *)0)
# 260 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
                                                                        , ( ( UBaseType_t ) 0U ) + 1, (TaskHandle_t *) 
# 260 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
                                                                                                                ((void *)0)
# 260 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
                                                                                                                    );
 xTaskCreate(vGarbageCollerctor, "vGarbageCollector", ( ( unsigned short ) 120 ), 
# 261 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
                                                                               ((void *)0)
# 261 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
                                                                                   , ( ( UBaseType_t ) 0U ) + 1, (TaskHandle_t *) 
# 261 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c" 3 4
                                                                                                                           ((void *)0)
# 261 "D:/Dropbox/Priv/Projects/nRIP24/examples/stm32f103c8/main.c"
                                                                                                                               );
 vTaskStartScheduler();
}
