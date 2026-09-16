.class public Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;
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
    name = "FloatStaxUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Ljava/lang/Float;",
        "Lcom/gpc/aws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;
    .locals 1

    .line 200
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;

    .line 202
    :cond_0
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 190
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

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

    .line 185
    check-cast p1, Lcom/gpc/aws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$FloatStaxUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
