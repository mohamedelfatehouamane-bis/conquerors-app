.class public Lcom/gpc/operations/utils/KeyboardUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/utils/KeyboardUtils;->addOnSoftKeyBoardVisibleListener(Lcom/gpc/operations/utils/KeyboardUtils$KeyboardListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/gpc/operations/utils/KeyboardUtils$KeyboardListener;

.field public final synthetic c:Lcom/gpc/operations/utils/KeyboardUtils;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/utils/KeyboardUtils;Landroid/view/View;Lcom/gpc/operations/utils/KeyboardUtils$KeyboardListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->c:Lcom/gpc/operations/utils/KeyboardUtils;

    iput-object p2, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->b:Lcom/gpc/operations/utils/KeyboardUtils$KeyboardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    .line 6
    iget-object v0, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide v4, 0x3fe999999999999aL    # 0.8

    const/4 v6, 0x0

    cmpg-double v7, v2, v4

    if-gez v7, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    :try_start_0
    const-string v3, "com.android.internal.R$dimen"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 12
    const-string v5, "status_bar_height"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->c:Lcom/gpc/operations/utils/KeyboardUtils;

    iget-object v4, v4, Lcom/gpc/operations/utils/KeyboardUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 18
    iget-object v4, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->c:Lcom/gpc/operations/utils/KeyboardUtils;

    iget-boolean v5, v4, Lcom/gpc/operations/utils/KeyboardUtils;->isVisiableForLast:Z

    if-eq v2, v5, :cond_1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 20
    iput v0, v4, Lcom/gpc/operations/utils/KeyboardUtils;->keyboardHeight:I

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->c:Lcom/gpc/operations/utils/KeyboardUtils;

    iput-boolean v2, v0, Lcom/gpc/operations/utils/KeyboardUtils;->isVisiableForLast:Z

    if-nez v2, :cond_2

    .line 24
    iput v6, v0, Lcom/gpc/operations/utils/KeyboardUtils;->keyboardHeight:I

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isVisiableForLast:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->c:Lcom/gpc/operations/utils/KeyboardUtils;

    iget-boolean v1, v1, Lcom/gpc/operations/utils/KeyboardUtils;->isVisiableForLast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyboardUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "keyboardHeight:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->c:Lcom/gpc/operations/utils/KeyboardUtils;

    iget v2, v2, Lcom/gpc/operations/utils/KeyboardUtils;->keyboardHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->b:Lcom/gpc/operations/utils/KeyboardUtils$KeyboardListener;

    if-eqz v0, :cond_3

    .line 30
    iget-object v1, p0, Lcom/gpc/operations/utils/KeyboardUtils$a;->c:Lcom/gpc/operations/utils/KeyboardUtils;

    iget-boolean v2, v1, Lcom/gpc/operations/utils/KeyboardUtils;->isVisiableForLast:Z

    iget v1, v1, Lcom/gpc/operations/utils/KeyboardUtils;->keyboardHeight:I

    invoke-interface {v0, v2, v1}, Lcom/gpc/operations/utils/KeyboardUtils$KeyboardListener;->onKeyboardVisible(ZI)V

    :cond_3
    return-void
.end method
