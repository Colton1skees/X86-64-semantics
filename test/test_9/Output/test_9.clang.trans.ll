; ModuleID = 'Output/test_9.clang.trans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_1(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  %R15_val = alloca i64, !mcsema_real_eip !2
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !2
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !2
  %XMM15_val = alloca i128, !mcsema_real_eip !2
  %XMM14_val = alloca i128, !mcsema_real_eip !2
  %XMM13_val = alloca i128, !mcsema_real_eip !2
  %XMM12_val = alloca i128, !mcsema_real_eip !2
  %XMM11_val = alloca i128, !mcsema_real_eip !2
  %XMM10_val = alloca i128, !mcsema_real_eip !2
  %XMM9_val = alloca i128, !mcsema_real_eip !2
  %XMM8_val = alloca i128, !mcsema_real_eip !2
  %XMM7_val = alloca i128, !mcsema_real_eip !2
  %XMM6_val = alloca i128, !mcsema_real_eip !2
  %XMM5_val = alloca i128, !mcsema_real_eip !2
  %XMM4_val = alloca i128, !mcsema_real_eip !2
  %XMM3_val = alloca i128, !mcsema_real_eip !2
  %XMM2_val = alloca i128, !mcsema_real_eip !2
  %XMM1_val = alloca i128, !mcsema_real_eip !2
  %XMM0_val = alloca i128, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !2
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !2
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !2
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !2
  %FPU_IM_val = alloca i1, !mcsema_real_eip !2
  %FPU_DM_val = alloca i1, !mcsema_real_eip !2
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !2
  %FPU_OM_val = alloca i1, !mcsema_real_eip !2
  %FPU_UM_val = alloca i1, !mcsema_real_eip !2
  %FPU_PM_val = alloca i1, !mcsema_real_eip !2
  %FPU_PC_val = alloca i2, !mcsema_real_eip !2
  %FPU_RC_val = alloca i2, !mcsema_real_eip !2
  %FPU_X_val = alloca i1, !mcsema_real_eip !2
  %FPU_IE_val = alloca i1, !mcsema_real_eip !2
  %FPU_DE_val = alloca i1, !mcsema_real_eip !2
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !2
  %FPU_OE_val = alloca i1, !mcsema_real_eip !2
  %FPU_UE_val = alloca i1, !mcsema_real_eip !2
  %FPU_PE_val = alloca i1, !mcsema_real_eip !2
  %FPU_SF_val = alloca i1, !mcsema_real_eip !2
  %FPU_ES_val = alloca i1, !mcsema_real_eip !2
  %FPU_C0_val = alloca i1, !mcsema_real_eip !2
  %FPU_C1_val = alloca i1, !mcsema_real_eip !2
  %FPU_C2_val = alloca i1, !mcsema_real_eip !2
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !2
  %FPU_C3_val = alloca i1, !mcsema_real_eip !2
  %FPU_B_val = alloca i1, !mcsema_real_eip !2
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !2
  %DF_val = alloca i1, !mcsema_real_eip !2
  %OF_val = alloca i1, !mcsema_real_eip !2
  %SF_val = alloca i1, !mcsema_real_eip !2
  %CF_val = alloca i1, !mcsema_real_eip !2
  %AF_val = alloca i1, !mcsema_real_eip !2
  %PF_val = alloca i1, !mcsema_real_eip !2
  %ZF_val = alloca i1, !mcsema_real_eip !2
  %RIP_val = alloca i64, !mcsema_real_eip !2
  %R14_val = alloca i64, !mcsema_real_eip !2
  %R13_val = alloca i64, !mcsema_real_eip !2
  %R12_val = alloca i64, !mcsema_real_eip !2
  %R11_val = alloca i64, !mcsema_real_eip !2
  %R10_val = alloca i64, !mcsema_real_eip !2
  %R9_val = alloca i64, !mcsema_real_eip !2
  %R8_val = alloca i64, !mcsema_real_eip !2
  %RSP_val = alloca i64, !mcsema_real_eip !2
  %RBP_val = alloca i64, !mcsema_real_eip !2
  %RDI_val = alloca i64, !mcsema_real_eip !2
  %RSI_val = alloca i64, !mcsema_real_eip !2
  %RDX_val = alloca i64, !mcsema_real_eip !2
  %RCX_val = alloca i64, !mcsema_real_eip !2
  %RBX_val = alloca i64, !mcsema_real_eip !2
  %RAX_val = alloca i64, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %1 = load i64* %RAX, !mcsema_real_eip !2
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX, !mcsema_real_eip !2
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64* %RCX, !mcsema_real_eip !2
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64* %RDX, !mcsema_real_eip !2
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64* %RSI, !mcsema_real_eip !2
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64* %RDI, !mcsema_real_eip !2
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64* %RSP, !mcsema_real_eip !2
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64* %RBP, !mcsema_real_eip !2
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64* %R8, !mcsema_real_eip !2
  store i64 %9, i64* %R8_val, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64* %R9, !mcsema_real_eip !2
  store i64 %10, i64* %R9_val, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64* %R10, !mcsema_real_eip !2
  store i64 %11, i64* %R10_val, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64* %R11, !mcsema_real_eip !2
  store i64 %12, i64* %R11_val, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64* %R12, !mcsema_real_eip !2
  store i64 %13, i64* %R12_val, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64* %R13, !mcsema_real_eip !2
  store i64 %14, i64* %R13_val, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64* %R14, !mcsema_real_eip !2
  store i64 %15, i64* %R14_val, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64* %R15, !mcsema_real_eip !2
  store i64 %16, i64* %R15_val, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64* %RIP, !mcsema_real_eip !2
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %18 = load i1* %CF, align 1, !mcsema_real_eip !2
  store i1 %18, i1* %CF_val, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %19 = load i1* %PF, align 1, !mcsema_real_eip !2
  store i1 %19, i1* %PF_val, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %20 = load i1* %AF, align 1, !mcsema_real_eip !2
  store i1 %20, i1* %AF_val, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !2
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %22 = load i1* %SF, align 1, !mcsema_real_eip !2
  store i1 %22, i1* %SF_val, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %23 = load i1* %OF, align 1, !mcsema_real_eip !2
  store i1 %23, i1* %OF_val, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %24 = load i1* %DF, align 1, !mcsema_real_eip !2
  store i1 %24, i1* %DF_val, !mcsema_real_eip !2
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !2
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !2
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !2
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !2
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !2
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !2
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !2
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !2
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !2
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !2
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !2
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !2
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !2
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !2
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !2
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !2
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !2
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !2
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !2
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !2
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !2
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !2
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  %77 = load i64* %RAX_val, !mcsema_real_eip !2
  %78 = and i64 %77, 4294967295
  store i64 %78, i64* %RCX_val, !mcsema_real_eip !2
  store i64 1, i64* %RAX_val, !mcsema_real_eip !3
  store i64 0, i64* %RBX_val, !mcsema_real_eip !4
  %79 = trunc i64 %77 to i32, !mcsema_real_eip !5
  %80 = sub i32 0, %79, !mcsema_real_eip !5
  %81 = xor i32 %79, %80, !mcsema_real_eip !5
  %82 = and i32 %81, 16, !mcsema_real_eip !5
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !5
  store i1 %83, i1* %AF_val, !mcsema_real_eip !5
  %84 = trunc i32 %80 to i8, !mcsema_real_eip !5
  %85 = tail call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !5
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  store i1 %87, i1* %PF_val, !mcsema_real_eip !5
  %88 = icmp eq i32 %79, 0
  store i1 %88, i1* %ZF_val, !mcsema_real_eip !5
  %89 = icmp slt i32 %80, 0
  store i1 %89, i1* %SF_val, !mcsema_real_eip !5
  %90 = icmp ne i32 %79, 0
  store i1 %90, i1* %CF_val, !mcsema_real_eip !5
  %91 = and i32 %79, %80, !mcsema_real_eip !5
  %92 = icmp slt i32 %91, 0
  store i1 %92, i1* %OF_val, !mcsema_real_eip !5
  %93 = load i1* %ZF_val, !mcsema_real_eip !6
  br i1 %93, label %block_0x13, label %block_0xd.preheader, !mcsema_real_eip !6

block_0xd.preheader:                              ; preds = %entry
  %94 = load i64* %RCX_val, !mcsema_real_eip !5
  %95 = trunc i64 %94 to i32, !mcsema_real_eip !5
  %RAX_val.promoted = load i64* %RAX_val
  %RBX_val.promoted = load i64* %RBX_val
  br label %block_0xd

block_0x13.loopexit:                              ; preds = %block_0xd
  %.lcssa91 = phi i1 [ %190, %block_0xd ]
  %.lcssa90 = phi i32 [ %189, %block_0xd ]
  %.lcssa89 = phi i32 [ %188, %block_0xd ]
  %.lcssa88 = phi i64 [ %187, %block_0xd ]
  %.lcssa87 = phi i32 [ %186, %block_0xd ]
  %.lcssa = phi i64 [ %184, %block_0xd ]
  %96 = xor i32 %.lcssa90, %95, !mcsema_real_eip !5
  %97 = and i32 %96, 16, !mcsema_real_eip !5
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !5
  %99 = icmp slt i32 %.lcssa89, 0
  %100 = xor i32 %95, %.lcssa87, !mcsema_real_eip !5
  %101 = and i32 %.lcssa90, %100, !mcsema_real_eip !5
  %102 = icmp slt i32 %101, 0
  %103 = trunc i32 %.lcssa89 to i8, !mcsema_real_eip !5
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !5
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  %107 = icmp ult i32 %.lcssa87, %95, !mcsema_real_eip !5
  store i64 %.lcssa, i64* %RAX_val
  store i1 %98, i1* %AF_val
  store i1 %99, i1* %SF_val
  store i1 %.lcssa91, i1* %ZF_val
  store i1 %102, i1* %OF_val
  store i1 %106, i1* %PF_val
  store i1 %107, i1* %CF_val
  store i64 %.lcssa88, i64* %RBX_val
  br label %block_0x13

block_0x13:                                       ; preds = %block_0x13.loopexit, %entry
  %108 = load i64* %RSP_val, !mcsema_real_eip !7
  %109 = add i64 %108, 8, !mcsema_real_eip !7
  store i64 %109, i64* %RSP_val, !mcsema_real_eip !7
  %110 = load i64* %RAX_val, !mcsema_real_eip !7
  store i64 %110, i64* %RAX, !mcsema_real_eip !7
  %111 = load i64* %RBX_val, !mcsema_real_eip !7
  store i64 %111, i64* %RBX, !mcsema_real_eip !7
  %112 = load i64* %RCX_val, !mcsema_real_eip !7
  store i64 %112, i64* %RCX, !mcsema_real_eip !7
  %113 = load i64* %RDX_val, !mcsema_real_eip !7
  store i64 %113, i64* %RDX, !mcsema_real_eip !7
  %114 = load i64* %RSI_val, !mcsema_real_eip !7
  store i64 %114, i64* %RSI, !mcsema_real_eip !7
  %115 = load i64* %RDI_val, !mcsema_real_eip !7
  store i64 %115, i64* %RDI, !mcsema_real_eip !7
  %116 = load i64* %RSP_val, !mcsema_real_eip !7
  store i64 %116, i64* %RSP, !mcsema_real_eip !7
  %117 = load i64* %RBP_val, !mcsema_real_eip !7
  store i64 %117, i64* %RBP, !mcsema_real_eip !7
  %118 = load i64* %R8_val, !mcsema_real_eip !7
  store i64 %118, i64* %R8, !mcsema_real_eip !7
  %119 = load i64* %R9_val, !mcsema_real_eip !7
  store i64 %119, i64* %R9, !mcsema_real_eip !7
  %120 = load i64* %R10_val, !mcsema_real_eip !7
  store i64 %120, i64* %R10, !mcsema_real_eip !7
  %121 = load i64* %R11_val, !mcsema_real_eip !7
  store i64 %121, i64* %R11, !mcsema_real_eip !7
  %122 = load i64* %R12_val, !mcsema_real_eip !7
  store i64 %122, i64* %R12, !mcsema_real_eip !7
  %123 = load i64* %R13_val, !mcsema_real_eip !7
  store i64 %123, i64* %R13, !mcsema_real_eip !7
  %124 = load i64* %R14_val, !mcsema_real_eip !7
  store i64 %124, i64* %R14, !mcsema_real_eip !7
  %125 = load i64* %R15_val, !mcsema_real_eip !7
  store i64 %125, i64* %R15, !mcsema_real_eip !7
  %126 = load i64* %RIP_val, !mcsema_real_eip !7
  store i64 %126, i64* %RIP, !mcsema_real_eip !7
  %127 = load i1* %CF_val, !mcsema_real_eip !7
  store i1 %127, i1* %CF, align 1, !mcsema_real_eip !7
  %128 = load i1* %PF_val, !mcsema_real_eip !7
  store i1 %128, i1* %PF, align 1, !mcsema_real_eip !7
  %129 = load i1* %AF_val, !mcsema_real_eip !7
  store i1 %129, i1* %AF, align 1, !mcsema_real_eip !7
  %130 = load i1* %ZF_val, !mcsema_real_eip !7
  store i1 %130, i1* %ZF, align 1, !mcsema_real_eip !7
  %131 = load i1* %SF_val, !mcsema_real_eip !7
  store i1 %131, i1* %SF, align 1, !mcsema_real_eip !7
  %132 = load i1* %OF_val, !mcsema_real_eip !7
  store i1 %132, i1* %OF, align 1, !mcsema_real_eip !7
  %133 = load i1* %DF_val, !mcsema_real_eip !7
  store i1 %133, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  %134 = load i1* %FPU_B_val, !mcsema_real_eip !7
  store i1 %134, i1* %FPU_B, align 1, !mcsema_real_eip !7
  %135 = load i1* %FPU_C3_val, !mcsema_real_eip !7
  store i1 %135, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  %136 = load i3* %FPU_TOP_val, !mcsema_real_eip !7
  store i3 %136, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  %137 = load i1* %FPU_C2_val, !mcsema_real_eip !7
  store i1 %137, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  %138 = load i1* %FPU_C1_val, !mcsema_real_eip !7
  store i1 %138, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  %139 = load i1* %FPU_C0_val, !mcsema_real_eip !7
  store i1 %139, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  %140 = load i1* %FPU_ES_val, !mcsema_real_eip !7
  store i1 %140, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  %141 = load i1* %FPU_SF_val, !mcsema_real_eip !7
  store i1 %141, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  %142 = load i1* %FPU_PE_val, !mcsema_real_eip !7
  store i1 %142, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  %143 = load i1* %FPU_UE_val, !mcsema_real_eip !7
  store i1 %143, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  %144 = load i1* %FPU_OE_val, !mcsema_real_eip !7
  store i1 %144, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  %145 = load i1* %FPU_ZE_val, !mcsema_real_eip !7
  store i1 %145, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  %146 = load i1* %FPU_DE_val, !mcsema_real_eip !7
  store i1 %146, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  %147 = load i1* %FPU_IE_val, !mcsema_real_eip !7
  store i1 %147, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  %148 = load i1* %FPU_X_val, !mcsema_real_eip !7
  store i1 %148, i1* %FPU_X, align 1, !mcsema_real_eip !7
  %149 = load i2* %FPU_RC_val, !mcsema_real_eip !7
  store i2 %149, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  %150 = load i2* %FPU_PC_val, !mcsema_real_eip !7
  store i2 %150, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  %151 = load i1* %FPU_PM_val, !mcsema_real_eip !7
  store i1 %151, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  %152 = load i1* %FPU_UM_val, !mcsema_real_eip !7
  store i1 %152, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  %153 = load i1* %FPU_OM_val, !mcsema_real_eip !7
  store i1 %153, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  %154 = load i1* %FPU_ZM_val, !mcsema_real_eip !7
  store i1 %154, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  %155 = load i1* %FPU_DM_val, !mcsema_real_eip !7
  store i1 %155, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  %156 = load i1* %FPU_IM_val, !mcsema_real_eip !7
  store i1 %156, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  %157 = load i64* %53, align 4
  store i64 %157, i64* %52, align 4
  %158 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !7
  store i16 %158, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  %159 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !7
  store i64 %159, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  %160 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !7
  store i16 %160, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  %161 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !7
  store i64 %161, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  %162 = load i128* %XMM0_val, !mcsema_real_eip !7
  store i128 %162, i128* %XMM0, align 1, !mcsema_real_eip !7
  %163 = load i128* %XMM1_val, !mcsema_real_eip !7
  store i128 %163, i128* %XMM1, align 1, !mcsema_real_eip !7
  %164 = load i128* %XMM2_val, !mcsema_real_eip !7
  store i128 %164, i128* %XMM2, align 1, !mcsema_real_eip !7
  %165 = load i128* %XMM3_val, !mcsema_real_eip !7
  store i128 %165, i128* %XMM3, align 1, !mcsema_real_eip !7
  %166 = load i128* %XMM4_val, !mcsema_real_eip !7
  store i128 %166, i128* %XMM4, align 1, !mcsema_real_eip !7
  %167 = load i128* %XMM5_val, !mcsema_real_eip !7
  store i128 %167, i128* %XMM5, align 1, !mcsema_real_eip !7
  %168 = load i128* %XMM6_val, !mcsema_real_eip !7
  store i128 %168, i128* %XMM6, align 1, !mcsema_real_eip !7
  %169 = load i128* %XMM7_val, !mcsema_real_eip !7
  store i128 %169, i128* %XMM7, align 1, !mcsema_real_eip !7
  %170 = load i128* %XMM8_val, !mcsema_real_eip !7
  store i128 %170, i128* %XMM8, align 1, !mcsema_real_eip !7
  %171 = load i128* %XMM9_val, !mcsema_real_eip !7
  store i128 %171, i128* %XMM9, align 1, !mcsema_real_eip !7
  %172 = load i128* %XMM10_val, !mcsema_real_eip !7
  store i128 %172, i128* %XMM10, align 1, !mcsema_real_eip !7
  %173 = load i128* %XMM11_val, !mcsema_real_eip !7
  store i128 %173, i128* %XMM11, align 1, !mcsema_real_eip !7
  %174 = load i128* %XMM12_val, !mcsema_real_eip !7
  store i128 %174, i128* %XMM12, align 1, !mcsema_real_eip !7
  %175 = load i128* %XMM13_val, !mcsema_real_eip !7
  store i128 %175, i128* %XMM13, align 1, !mcsema_real_eip !7
  %176 = load i128* %XMM14_val, !mcsema_real_eip !7
  store i128 %176, i128* %XMM14, align 1, !mcsema_real_eip !7
  %177 = load i128* %XMM15_val, !mcsema_real_eip !7
  store i128 %177, i128* %XMM15, align 1, !mcsema_real_eip !7
  %178 = load i64* %STACK_BASE_val, !mcsema_real_eip !7
  store i64 %178, i64* %STACK_BASE, align 1, !mcsema_real_eip !7
  %179 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !7
  store i64 %179, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !7
  ret void, !mcsema_real_eip !7

block_0xd:                                        ; preds = %block_0xd, %block_0xd.preheader
  %180 = phi i64 [ %RBX_val.promoted, %block_0xd.preheader ], [ %187, %block_0xd ]
  %181 = phi i64 [ %RAX_val.promoted, %block_0xd.preheader ], [ %184, %block_0xd ]
  %182 = trunc i64 %181 to i32, !mcsema_real_eip !8
  %183 = shl i32 %182, 1
  %184 = zext i32 %183 to i64, !mcsema_real_eip !8
  %185 = trunc i64 %180 to i32, !mcsema_real_eip !9
  %186 = add i32 %185, 1, !mcsema_real_eip !9
  %187 = zext i32 %186 to i64, !mcsema_real_eip !9
  %188 = sub i32 %186, %95, !mcsema_real_eip !5
  %189 = xor i32 %188, %186, !mcsema_real_eip !5
  %190 = icmp eq i32 %186, %95
  br i1 %190, label %block_0x13.loopexit, label %block_0xd, !mcsema_real_eip !6
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  tail call x86_64_sysvcc void @sub_1(%struct.regs* %0)
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 1, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!3 = metadata !{i64 5, [11 x i8] c"\09incl\09%eax\00"}
!4 = metadata !{i64 7, [17 x i8] c"\09xorl\09%ebx, %ebx\00"}
!5 = metadata !{i64 9, [17 x i8] c"\09cmpl\09%ecx, %ebx\00"}
!6 = metadata !{i64 11, [6 x i8] c"\09je\096\00"}
!7 = metadata !{i64 19, [6 x i8] c"\09retq\00"}
!8 = metadata !{i64 13, [17 x i8] c"\09addl\09%eax, %eax\00"}
!9 = metadata !{i64 15, [11 x i8] c"\09incl\09%ebx\00"}
