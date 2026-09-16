.class public interface abstract annotation Lcom/gpc/tsh/pay/flow/client/ClientState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FREE:I = 0x1

.field public static final INITIALIZD:I = 0x3

.field public static final INITIALIZE_FAIL:I = -0x1

.field public static final INITIALIZING:I = 0x2

.field public static final PURCHASED:I = 0x5

.field public static final PURCHASE_FAIL:I = -0x2

.field public static final PURCHASING:I = 0x4
