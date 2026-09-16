.class public Lcom/polites/FlingListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FlingListener.java"


# instance fields
.field private velocityX:F

.field private velocityY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getVelocityX()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/polites/FlingListener;->velocityX:F

    return v0
.end method

.method public getVelocityY()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/polites/FlingListener;->velocityY:F

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 33
    iput p3, p0, Lcom/polites/FlingListener;->velocityX:F

    .line 34
    iput p4, p0, Lcom/polites/FlingListener;->velocityY:F

    const/4 p1, 0x1

    return p1
.end method
