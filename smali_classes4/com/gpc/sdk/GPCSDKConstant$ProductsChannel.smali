.class public Lcom/gpc/sdk/GPCSDKConstant$ProductsChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/GPCSDKConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProductsChannel"
.end annotation


# static fields
.field public static final Android:Ljava/lang/String; = "android"

.field public static final Huawei:Ljava/lang/String; = "huawei"

.field public static final Rustore:Ljava/lang/String; = "rustore"

.field public static final Samsung:Ljava/lang/String; = "samsung"


# instance fields
.field final synthetic this$0:Lcom/gpc/sdk/GPCSDKConstant;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCSDKConstant;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCSDKConstant$ProductsChannel;->this$0:Lcom/gpc/sdk/GPCSDKConstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
