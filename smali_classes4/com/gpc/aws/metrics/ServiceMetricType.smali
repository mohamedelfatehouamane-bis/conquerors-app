.class public interface abstract Lcom/gpc/aws/metrics/ServiceMetricType;
.super Ljava/lang/Object;
.source "ServiceMetricType.java"

# interfaces
.implements Lcom/gpc/aws/metrics/MetricType;


# static fields
.field public static final DOWNLOAD_BYTE_COUNT_NAME_SUFFIX:Ljava/lang/String; = "DownloadByteCount"

.field public static final DOWNLOAD_THROUGHPUT_NAME_SUFFIX:Ljava/lang/String; = "DownloadThroughput"

.field public static final UPLOAD_BYTE_COUNT_NAME_SUFFIX:Ljava/lang/String; = "UploadByteCount"

.field public static final UPLOAD_THROUGHPUT_NAME_SUFFIX:Ljava/lang/String; = "UploadThroughput"


# virtual methods
.method public abstract getServiceName()Ljava/lang/String;
.end method
