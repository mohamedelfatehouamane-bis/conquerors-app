.class public final Lcom/gpc/operations/utils/KeyboardStatusDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/utils/KeyboardStatusDetector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/operations/utils/KeyboardStatusDetector$Companion;

.field public static final SOFT_KEY_BOARD_MIN_HEIGHT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "KeyboardStatusDetector"


# instance fields
.field private keyboardVisible:Z

.field private mVisibilityListener:Lcom/gpc/operations/utils/KeyboardVisibilityListener;

.field private rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/operations/utils/KeyboardStatusDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/utils/KeyboardStatusDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->Companion:Lcom/gpc/operations/utils/KeyboardStatusDetector$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final destory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->rootView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RootView Height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->rootView:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyboardStatusDetector"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "WindowVisibleDisplayFrame bottom:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "WindowVisibleDisplayFrame top:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->rootView:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 7
    iget-boolean v1, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->keyboardVisible:Z

    if-nez v1, :cond_1

    .line 8
    iput-boolean v3, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->keyboardVisible:Z

    .line 9
    iget-object v1, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->mVisibilityListener:Lcom/gpc/operations/utils/KeyboardVisibilityListener;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    .line 12
    iget-object v2, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->rootView:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 13
    iget-object v4, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->rootView:Landroid/view/View;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    .line 14
    invoke-interface {v1, v3, v2, v4}, Lcom/gpc/operations/utils/KeyboardVisibilityListener;->onVisibilityChanged(ZII)V

    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->keyboardVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->keyboardVisible:Z

    .line 24
    iget-object v1, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->mVisibilityListener:Lcom/gpc/operations/utils/KeyboardVisibilityListener;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    .line 25
    iget-object v2, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->rootView:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-interface {v1, v0, v2, v0}, Lcom/gpc/operations/utils/KeyboardVisibilityListener;->onVisibilityChanged(ZII)V

    :cond_1
    :goto_0
    return v3
.end method

.method public final registerActivity(Landroid/app/Activity;)Lcom/gpc/operations/utils/KeyboardStatusDetector;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->rootView:Landroid/view/View;

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-object p0
.end method

.method public final registerFragment(Landroidx/fragment/app/Fragment;)Lcom/gpc/operations/utils/KeyboardStatusDetector;
    .locals 1

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->rootView:Landroid/view/View;

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-object p0
.end method

.method public final setVisibilityListener(Lcom/gpc/operations/utils/KeyboardVisibilityListener;)Lcom/gpc/operations/utils/KeyboardStatusDetector;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/utils/KeyboardStatusDetector;->mVisibilityListener:Lcom/gpc/operations/utils/KeyboardVisibilityListener;

    return-object p0
.end method
