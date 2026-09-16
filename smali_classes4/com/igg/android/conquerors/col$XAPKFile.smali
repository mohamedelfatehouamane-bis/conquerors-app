.class Lcom/igg/android/conquerors/col$XAPKFile;
.super Ljava/lang/Object;
.source "col.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/android/conquerors/col;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XAPKFile"
.end annotation


# instance fields
.field public final mFileSize:J

.field public final mFileVersion:I

.field public final mIsMain:Z


# direct methods
.method constructor <init>(ZIJ)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-boolean p1, p0, Lcom/igg/android/conquerors/col$XAPKFile;->mIsMain:Z

    .line 209
    iput p2, p0, Lcom/igg/android/conquerors/col$XAPKFile;->mFileVersion:I

    .line 210
    iput-wide p3, p0, Lcom/igg/android/conquerors/col$XAPKFile;->mFileSize:J

    return-void
.end method
