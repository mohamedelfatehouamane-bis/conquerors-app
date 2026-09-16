.class Lcom/ProductHelper$2;
.super Ljava/lang/Object;
.source "ProductHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ProductHelper;->requestProducts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 159
    sget-object v0, Lcom/ProductHelper;->s_Instance:Lcom/ProductHelper;

    invoke-virtual {v0}, Lcom/ProductHelper;->Initialize()V

    return-void
.end method
