.class public Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;->a(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;

.field public final synthetic b:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c$a;->b:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c;

    iput-object p2, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c$a;->a:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 2

    const-string p1, "sso_token"

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c$a;->a:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$c$a;->a:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;

    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void
.end method
