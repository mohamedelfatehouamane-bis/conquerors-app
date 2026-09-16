.class public Lcom/gpc/util/DeviceUtil$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/util/DeviceUtil;->getAdvertisingId(Landroid/content/Context;Lcom/gpc/util/DeviceUtil$getAdvertisingIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/gpc/util/DeviceUtil$getAdvertisingIdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gpc/util/DeviceUtil$getAdvertisingIdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/util/DeviceUtil$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/gpc/util/DeviceUtil$a;->b:Lcom/gpc/util/DeviceUtil$getAdvertisingIdListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string p1, ""

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/gpc/util/DeviceUtil$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/gpc/util/DeviceUtil;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/gpc/util/DeviceUtil$a;->b:Lcom/gpc/util/DeviceUtil$getAdvertisingIdListener;

    invoke-interface {v0, p1}, Lcom/gpc/util/DeviceUtil$getAdvertisingIdListener;->onRequestFinished(Ljava/lang/String;)V

    return-void
.end method
