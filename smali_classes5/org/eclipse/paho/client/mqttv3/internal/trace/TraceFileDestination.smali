.class public Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;
.super Ljava/lang/Object;
.source "TraceFileDestination.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private currentFileSize:I

.field private dos:Ljava/io/DataOutputStream;

.field private enabled:Z

.field private fileCount:I

.field private fileIndex:I

.field private maxFileSize:I

.field private out:Ljava/io/FileOutputStream;

.field private traceDirectory:Ljava/io/File;

.field private traceProperties:Ljava/util/Properties;

.field private tracePropertiesFile:Ljava/io/File;

.field private tracePropertiesUpdate:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    .line 36
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    .line 37
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->currentFileSize:I

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    .line 61
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    .line 63
    const-string v0, "org.eclipse.paho.client.mqttv3.trace"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mqtt-trace.properties"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    goto :goto_0

    .line 67
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    .line 69
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->updateTraceProperties()Z

    return-void
.end method

.method private updateTraceProperties()Z
    .locals 8

    .line 82
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 90
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    const-string v4, "user.dir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "org.eclipse.paho.client.mqttv3.trace.outputName"

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceDirectory:Ljava/io/File;

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 111
    iput-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    .line 112
    iput-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    return v3

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    const-string v4, "org.eclipse.paho.client.mqttv3.trace.count"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileCount:I

    .line 117
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    const-string v4, "org.eclipse.paho.client.mqttv3.trace.limit"

    const-string v5, "5000000"

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->maxFileSize:I

    .line 120
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->initialiseFile()V

    .line 123
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 125
    iput-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    .line 126
    iput-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    return v3

    .line 130
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 131
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    return v0

    .line 94
    :catch_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 95
    iput-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    .line 96
    iput-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    return v3

    .line 138
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    return v0

    .line 143
    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 144
    iput-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->tracePropertiesUpdate:J

    .line 145
    iput-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    return v3
.end method


# virtual methods
.method public initialiseFile()V
    .locals 6

    .line 156
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :catch_0
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    :cond_0
    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->currentFileSize:I

    .line 164
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceDirectory:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mqtt-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".trc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 169
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 171
    :catch_1
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    .line 172
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    :goto_0
    return-void
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 4

    .line 151
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    const-string v1, "org.eclipse.paho.client.mqttv3.trace.client.*.status"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->traceProperties:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "org.eclipse.paho.client.mqttv3.trace.client."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".status"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-short v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->source:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 179
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-wide v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 180
    iget-byte v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->type:B

    .line 181
    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    array-length v2, v2

    if-lez v2, :cond_0

    or-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    .line 184
    :cond_0
    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->throwable:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    .line 187
    :cond_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 188
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-short v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->id:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 189
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->threadName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 190
    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 191
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x0

    .line 192
    :goto_0
    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 193
    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-object v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :cond_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_3
    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->throwable:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 203
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    array-length v4, v1

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 204
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    iget-object p1, p1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 205
    :goto_2
    array-length v3, v1

    if-ge p1, v3, :cond_4

    .line 206
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->dos:Ljava/io/DataOutputStream;

    aget-object v4, v1, p1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 209
    :cond_4
    iget p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileCount:I

    if-le p1, v2, :cond_6

    iget p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->currentFileSize:I

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->maxFileSize:I

    if-le p1, v1, :cond_6

    .line 211
    iget p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    .line 212
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileCount:I

    if-ne p1, v1, :cond_5

    .line 213
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->fileIndex:I

    .line 215
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->initialiseFile()V

    .line 217
    :cond_6
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_7

    .line 218
    iget p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->currentFileSize:I

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->currentFileSize:I

    .line 219
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 220
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 222
    :cond_7
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 224
    :catch_0
    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceFileDestination;->enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
