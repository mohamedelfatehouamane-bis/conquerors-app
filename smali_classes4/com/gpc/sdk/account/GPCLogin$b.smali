.class public Lcom/gpc/sdk/account/GPCLogin$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/GPCLogin;->a(Lcom/gpc/sdk/account/GPCLoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCLoginListener;

.field public final synthetic b:Lcom/gpc/sdk/account/GPCLogin;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLoginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$b;->b:Lcom/gpc/sdk/account/GPCLogin;

    iput-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$b;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$b;->b:Lcom/gpc/sdk/account/GPCLogin;

    iget-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$b;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/account/GPCLogin;->loginAsGuest(Lcom/gpc/sdk/account/GPCLoginListener;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$b;->b:Lcom/gpc/sdk/account/GPCLogin;

    iget-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$b;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/account/GPCLogin;->createAndLoginWithDevice(Lcom/gpc/sdk/account/GPCLoginListener;)V

    return-void
.end method
