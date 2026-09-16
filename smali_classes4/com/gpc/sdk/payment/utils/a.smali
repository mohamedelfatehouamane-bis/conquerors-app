.class public Lcom/gpc/sdk/payment/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/utils/a$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "PaymentStorage"

.field public static final d:Ljava/lang/String; = "f7fb9a081d87f2ceaf0832cfcb65c2eef7fb9a081d87f2ceaf0832cfcb65c2ee"

.field public static final e:Ljava/lang/String; = "payment_message"


# instance fields
.field public a:Lcom/gpc/util/LocalStorage;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/util/LocalStorage;

    const-string v1, "payment_message"

    invoke-direct {v0, p1, v1}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/payment/utils/a;->a:Lcom/gpc/util/LocalStorage;

    .line 3
    new-instance p1, Lcom/gpc/util/SecretKeyHelper;

    invoke-direct {p1}, Lcom/gpc/util/SecretKeyHelper;-><init>()V

    .line 4
    const-string v0, "f7fb9a081d87f2ceaf0832cfcb65c2eef7fb9a081d87f2ceaf0832cfcb65c2ee"

    invoke-virtual {p1, v0}, Lcom/gpc/util/SecretKeyHelper;->mix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/utils/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/payment/utils/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/utils/a;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/a;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "retry_interval"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/utils/a;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/gpc/util/AESUtils;->decryptBase64EncodeData(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_0
    const-string p1, ""

    .line 19
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "decodePurchaseInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentStorage"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 20
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 22
    const-string p2, "PaymentStorage"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/a;->a:Lcom/gpc/util/LocalStorage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "retry_interval"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeInt(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/gpc/sdk/payment/utils/a$a;)V
    .locals 4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cachePurchaseInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentStorage"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v1, p1, Lcom/gpc/sdk/payment/utils/a$a;->b:Ljava/lang/String;

    const-string v2, "userId"

    invoke-virtual {p0, v0, v2, v1}, Lcom/gpc/sdk/payment/utils/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p1, Lcom/gpc/sdk/payment/utils/a$a;->c:Ljava/lang/String;

    const-string v2, "game_id"

    invoke-virtual {p0, v0, v2, v1}, Lcom/gpc/sdk/payment/utils/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p1, Lcom/gpc/sdk/payment/utils/a$a;->d:Ljava/lang/String;

    const-string v2, "payload"

    invoke-virtual {p0, v0, v2, v1}, Lcom/gpc/sdk/payment/utils/a;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/payment/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/gpc/sdk/payment/utils/a;->a:Lcom/gpc/util/LocalStorage;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payload_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/gpc/sdk/payment/utils/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/a;->a:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->writeBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/utils/a;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 5
    invoke-static {p1, v0, v1}, Lcom/gpc/util/AESUtils;->encryptAndBase64Encode(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    const-string p1, ""

    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "encodePurchaseInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentStorage"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    const-string p2, "PaymentStorage"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/gpc/sdk/payment/utils/a$a;
    .locals 6

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/gpc/sdk/payment/utils/a;->a:Lcom/gpc/util/LocalStorage;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payload_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encrypt cachePurchaseInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PaymentStorage"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/gpc/sdk/payment/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "decrypt cachePurchaseInfo:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    const-string v1, "userId"

    invoke-virtual {p0, v2, v1, v0}, Lcom/gpc/sdk/payment/utils/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v0}, Lcom/gpc/sdk/payment/utils/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_0
    const-string v4, "game_id"

    invoke-virtual {p0, v2, v4, v0}, Lcom/gpc/sdk/payment/utils/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16
    const-string v5, "payload"

    invoke-virtual {p0, v2, v5, v0}, Lcom/gpc/sdk/payment/utils/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    new-instance v5, Lcom/gpc/sdk/payment/utils/a$a;

    invoke-direct {v5, p1, v1, v4, v2}, Lcom/gpc/sdk/payment/utils/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-static {v3, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v5, 0x0

    .line 24
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "geUserIDOfPurchaseInfo:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/a;->a:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
