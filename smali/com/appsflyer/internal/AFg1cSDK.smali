.class public final Lcom/appsflyer/internal/AFg1cSDK;
.super Lcom/appsflyer/internal/AFa1pSDK;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "adimpression_generic"

    invoke-direct {p0, v2, v0, v1}, Lcom/appsflyer/internal/AFa1pSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1bSDK;
    .locals 1

    .line 13
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->afDebugLog:Lcom/appsflyer/internal/AFe1bSDK;

    return-object v0
.end method
