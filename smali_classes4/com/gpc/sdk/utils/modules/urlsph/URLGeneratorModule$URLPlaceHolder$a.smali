.class public Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;->a(Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$a;->b:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;

    iput-object p2, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnComplete(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
