.class public Lcom/gpc/sdk/payment/flow/client/samsung/SamsungPaymentConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static IAP_MODE:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;->OPERATION_MODE_PRODUCTION:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    sput-object v0, Lcom/gpc/sdk/payment/flow/client/samsung/SamsungPaymentConfig;->IAP_MODE:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static productionMode()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;->OPERATION_MODE_PRODUCTION:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    sput-object v0, Lcom/gpc/sdk/payment/flow/client/samsung/SamsungPaymentConfig;->IAP_MODE:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    return-void
.end method

.method public static testFailurenMode()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;->OPERATION_MODE_TEST_FAILURE:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    sput-object v0, Lcom/gpc/sdk/payment/flow/client/samsung/SamsungPaymentConfig;->IAP_MODE:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    return-void
.end method

.method public static testMode()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;->OPERATION_MODE_TEST:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    sput-object v0, Lcom/gpc/sdk/payment/flow/client/samsung/SamsungPaymentConfig;->IAP_MODE:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    return-void
.end method
