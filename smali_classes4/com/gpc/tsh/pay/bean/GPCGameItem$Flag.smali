.class public Lcom/gpc/tsh/pay/bean/GPCGameItem$Flag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/tsh/pay/bean/GPCGameItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flag"
.end annotation


# static fields
.field public static final DISCOUNTED:I = 0x2

.field public static final HOT:I = 0x3

.field public static final NEW:I = 0x4

.field public static final NORMAL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
