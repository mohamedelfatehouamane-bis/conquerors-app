.class public Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;
.super Ljava/lang/Object;
.source "SimpleTypeStaxUnmarshallers.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongStaxUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Ljava/lang/Long;",
        "Lcom/gpc/aws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;
    .locals 1

    .line 223
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;

    .line 225
    :cond_0
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 213
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    check-cast p1, Lcom/gpc/aws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$LongStaxUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
