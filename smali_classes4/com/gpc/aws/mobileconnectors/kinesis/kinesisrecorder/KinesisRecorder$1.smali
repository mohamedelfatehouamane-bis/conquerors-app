.class Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder$1;
.super Ljava/lang/Object;
.source "KinesisRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->checkUpgrade(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;

.field final synthetic val$directory:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;Ljava/io/File;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder$1;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;

    iput-object p2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder$1;->val$directory:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder$1;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;

    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder$1;->val$directory:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->upgrade(Ljava/io/File;)V

    return-void
.end method
