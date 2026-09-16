.class public Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public AES:Z

.field public RSA:Z

.field public RSAValue:Ljava/lang/String;

.field public aesTimestampMD5Value:Ljava/lang/String;

.field public aesTimestampValue:Ljava/lang/String;

.field public aesValue:Ljava/lang/String;

.field public other:Ljava/lang/String;

.field public parsingConfiguration:Z

.field public sign:Ljava/lang/String;

.field public signNative:Z

.field public signValue:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->parsingConfiguration:Z

    .line 5
    iput-boolean v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->AES:Z

    .line 6
    const-string v1, ""

    iput-object v1, p0, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->aesValue:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->aesTimestampValue:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->aesTimestampMD5Value:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->signNative:Z

    .line 10
    iput-object v1, p0, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->signValue:Ljava/lang/String;

    .line 11
    iput-boolean v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->RSA:Z

    .line 12
    iput-object v1, p0, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->RSAValue:Ljava/lang/String;

    .line 13
    iput-boolean v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->success:Z

    return-void
.end method
