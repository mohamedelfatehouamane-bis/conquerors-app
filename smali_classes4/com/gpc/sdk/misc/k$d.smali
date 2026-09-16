.class public abstract Lcom/gpc/sdk/misc/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/misc/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/misc/k;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/k$d;->a:Lcom/gpc/sdk/misc/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/misc/k;Lcom/gpc/sdk/misc/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/misc/k$d;-><init>(Lcom/gpc/sdk/misc/k;)V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract b(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract c(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p2

    const/16 p3, 0xfa0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x1770

    if-eq p2, p3, :cond_1

    const/16 p3, 0x1388

    if-eq p2, p3, :cond_0

    const/16 p3, 0x1389

    if-eq p2, p3, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/misc/k$d;->c(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/misc/k$d;->a(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/misc/k$d;->b(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/k$d;->a()V

    return-void
.end method
