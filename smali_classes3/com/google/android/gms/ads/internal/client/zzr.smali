.class public final Lcom/google/android/gms/ads/internal/client/zzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@23.6.0"


# static fields
.field public static final zza:Lcom/google/android/gms/ads/internal/client/zzr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzei;)Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 29

    move-object/from16 v0, p2

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzei;->zzk()Ljava/lang/String;

    move-result-object v13

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzei;->zzp()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    move-object/from16 v1, p1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzei;->zzs(Landroid/content/Context;)Z

    move-result v7

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzei;->zzf(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzei;->zzl()Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzei;->zzi()Lcom/google/android/gms/ads/search/SearchAdRequest;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    new-instance v5, Lcom/google/android/gms/ads/internal/client/zzfx;

    invoke-direct {v5, v2}, Lcom/google/android/gms/ads/internal/client/zzfx;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    move-object v11, v5

    goto :goto_1

    :cond_1
    move-object v11, v3

    .line 10
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbc;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzq([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_2

    :cond_2
    move-object/from16 v18, v3

    .line 14
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzei;->zzr()Z

    move-result v19

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzex;->zzf()Lcom/google/android/gms/ads/internal/client/zzex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/client/zzex;->zzc()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzei;->zzb()I

    move-result v2

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v5

    .line 18
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getMaxAdContentRating()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzp;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/client/zzp;-><init>()V

    .line 20
    invoke-static {v2, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzei;->zzn()Ljava/util/List;

    move-result-object v23

    .line 22
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzm;

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzei;->zzg()Landroid/os/Bundle;

    move-result-object v14

    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzei;->zze()Landroid/os/Bundle;

    move-result-object v15

    new-instance v2, Ljava/util/ArrayList;

    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzei;->zzo()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzei;->zzm()Ljava/lang/String;

    move-result-object v17

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v21

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzei;->zza()I

    move-result v24

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzei;->zzj()Ljava/lang/String;

    move-result-object v25

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getPublisherPrivacyPersonalizationState()Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->getValue()I

    move-result v26

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/client/zzei;->zzc()J

    move-result-wide v27

    const/16 v1, 0x8

    const-wide/16 v2, -0x1

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v28}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfx;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    return-object v0
.end method
