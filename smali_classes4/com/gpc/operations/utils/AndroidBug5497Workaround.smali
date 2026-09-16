.class public Lcom/gpc/operations/utils/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidBug5497Workaroun"


# instance fields
.field private frameLayoutHeight:I

.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutHeight:I

    const v1, 0x1020002

    .line 24
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/gpc/operations/utils/AndroidBug5497Workaround$a;

    invoke-direct {v0, p0}, Lcom/gpc/operations/utils/AndroidBug5497Workaround$a;-><init>(Lcom/gpc/operations/utils/AndroidBug5497Workaround;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 31
    iget-object p1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method private constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutHeight:I

    const v1, 0x1020002

    .line 44
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/gpc/operations/utils/AndroidBug5497Workaround$b;

    invoke-direct {v0, p0}, Lcom/gpc/operations/utils/AndroidBug5497Workaround$b;-><init>(Lcom/gpc/operations/utils/AndroidBug5497Workaround;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 51
    iget-object p1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/utils/AndroidBug5497Workaround;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/gpc/operations/utils/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public static assistDialog(Landroid/app/Dialog;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/gpc/operations/utils/AndroidBug5497Workaround;-><init>(Landroid/app/Dialog;)V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private possiblyResizeChildOfContent()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    .line 5
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_1

    .line 7
    iget v3, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutHeight:I

    if-nez v3, :cond_0

    .line 10
    iget-object v3, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutHeight:I

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 16
    :cond_1
    iget v1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutHeight:I

    if-eqz v1, :cond_2

    .line 17
    const-string v1, "AndroidBug5497Workaroun"

    const-string v2, "0 != frameLayoutHeight"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->frameLayoutHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 21
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 22
    iput v0, p0, Lcom/gpc/operations/utils/AndroidBug5497Workaround;->usableHeightPrevious:I

    :cond_3
    return-void
.end method
