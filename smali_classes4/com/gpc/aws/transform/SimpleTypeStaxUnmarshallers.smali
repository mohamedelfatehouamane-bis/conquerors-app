.class public Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers;
.super Ljava/lang/Object;
.source "SimpleTypeStaxUnmarshallers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;,
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;,
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;,
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;,
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;,
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;,
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$IntegerStaxUnmarshaller;,
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$DoubleStaxUnmarshaller;,
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigIntegerStaxUnmarshaller;,
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;,
        Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;
    }
.end annotation


# static fields
.field private static log:Lcom/gpc/aws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers;

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers;->log:Lcom/gpc/aws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/gpc/aws/logging/Log;
    .locals 1

    .line 32
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers;->log:Lcom/gpc/aws/logging/Log;

    return-object v0
.end method
