.class public Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactoryFactory.java"


# static fields
.field public static final CIPHERSUITES:Ljava/lang/String; = "com.ibm.ssl.enabledCipherSuites"

.field private static final CLASS_NAME:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

.field public static final CLIENTAUTH:Ljava/lang/String; = "com.ibm.ssl.clientAuthentication"

.field public static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"

.field public static final JSSEPROVIDER:Ljava/lang/String; = "com.ibm.ssl.contextProvider"

.field public static final KEYSTORE:Ljava/lang/String; = "com.ibm.ssl.keyStore"

.field public static final KEYSTOREMGR:Ljava/lang/String; = "com.ibm.ssl.keyManager"

.field public static final KEYSTOREPROVIDER:Ljava/lang/String; = "com.ibm.ssl.keyStoreProvider"

.field public static final KEYSTOREPWD:Ljava/lang/String; = "com.ibm.ssl.keyStorePassword"

.field public static final KEYSTORETYPE:Ljava/lang/String; = "com.ibm.ssl.keyStoreType"

.field public static final SSLPROTOCOL:Ljava/lang/String; = "com.ibm.ssl.protocol"

.field public static final SYSKEYMGRALGO:Ljava/lang/String; = "ssl.KeyManagerFactory.algorithm"

.field public static final SYSKEYSTORE:Ljava/lang/String; = "javax.net.ssl.keyStore"

.field public static final SYSKEYSTOREPWD:Ljava/lang/String; = "javax.net.ssl.keyStorePassword"

.field public static final SYSKEYSTORETYPE:Ljava/lang/String; = "javax.net.ssl.keyStoreType"

.field public static final SYSTRUSTMGRALGO:Ljava/lang/String; = "ssl.TrustManagerFactory.algorithm"

.field public static final SYSTRUSTSTORE:Ljava/lang/String; = "javax.net.ssl.trustStore"

.field public static final SYSTRUSTSTOREPWD:Ljava/lang/String; = "javax.net.ssl.trustStorePassword"

.field public static final SYSTRUSTSTORETYPE:Ljava/lang/String; = "javax.net.ssl.trustStoreType"

.field public static final TRUSTSTORE:Ljava/lang/String; = "com.ibm.ssl.trustStore"

.field public static final TRUSTSTOREMGR:Ljava/lang/String; = "com.ibm.ssl.trustManager"

.field public static final TRUSTSTOREPROVIDER:Ljava/lang/String; = "com.ibm.ssl.trustStoreProvider"

.field public static final TRUSTSTOREPWD:Ljava/lang/String; = "com.ibm.ssl.trustStorePassword"

.field public static final TRUSTSTORETYPE:Ljava/lang/String; = "com.ibm.ssl.trustStoreType"

.field private static final key:[B

.field private static final propertyKeys:[Ljava/lang/String;

.field private static final xorTag:Ljava/lang/String; = "{xor}"


# instance fields
.field private configs:Ljava/util/Hashtable;

.field private defaultProperties:Ljava/util/Properties;

.field private logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 137
    const-string v12, "com.ibm.ssl.enabledCipherSuites"

    const-string v13, "com.ibm.ssl.clientAuthentication"

    const-string v0, "com.ibm.ssl.protocol"

    const-string v1, "com.ibm.ssl.contextProvider"

    const-string v2, "com.ibm.ssl.keyStore"

    const-string v3, "com.ibm.ssl.keyStorePassword"

    const-string v4, "com.ibm.ssl.keyStoreType"

    const-string v5, "com.ibm.ssl.keyStoreProvider"

    const-string v6, "com.ibm.ssl.keyManager"

    const-string v7, "com.ibm.ssl.trustStore"

    const-string v8, "com.ibm.ssl.trustStorePassword"

    const-string v9, "com.ibm.ssl.trustStoreType"

    const-string v10, "com.ibm.ssl.trustStoreProvider"

    const-string v11, "com.ibm.ssl.trustManager"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    const/16 v0, 0x8

    .line 146
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    return-void

    :array_0
    .array-data 1
        -0x63t
        -0x59t
        -0x27t
        -0x80t
        0x5t
        -0x48t
        -0x77t
        -0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    .line 183
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;-><init>()V

    .line 192
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    return-void
.end method

.method private checkPropertyKeys(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 223
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 224
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->keyValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid IBM SSL property key."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private convertPassword(Ljava/util/Properties;)V
    .locals 4

    .line 378
    const-string v0, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    const-string v2, "{xor}"

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_0
    const-string v0, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static deObfuscate(Ljava/lang/String;)[C
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x5

    .line 307
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 313
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 314
    aget-byte v1, p0, v0

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    array-length v3, v2

    rem-int v3, v0, v3

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->toChar([B)[C

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 801
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 807
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 827
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Properties;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 830
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 835
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    if-eqz p1, :cond_2

    .line 837
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1117
    const-string v2, "com.ibm.ssl.keyStore"

    .line 1120
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1122
    const-string v3, "TLS"

    .line 1124
    :cond_0
    iget-object v4, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "null (broker defaults)"

    const-string v9, "getSSLContext"

    const-string v10, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    move-object v11, v0

    goto :goto_0

    :cond_1
    move-object v11, v8

    .line 1126
    :goto_0
    new-array v12, v5, [Ljava/lang/Object;

    aput-object v11, v12, v7

    aput-object v3, v12, v6

    const-string v11, "12000"

    invoke-interface {v4, v10, v9, v11, v12}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1130
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getJSSEProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    if-nez v4, :cond_3

    .line 1133
    :try_start_0
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    goto :goto_1

    .line 1135
    :cond_3
    invoke-static {v3, v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_b

    .line 1137
    :goto_1
    :try_start_1
    iget-object v4, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_b

    if-eqz v4, :cond_5

    .line 1139
    :try_start_2
    const-string v12, "12001"

    if-eqz v0, :cond_4

    move-object v13, v0

    goto :goto_2

    :cond_4
    move-object v13, v8

    :goto_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v14

    invoke-virtual {v14}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v13, v15, v7

    aput-object v14, v15, v6

    invoke-interface {v4, v10, v9, v12, v15}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_b

    .line 1143
    :cond_5
    :try_start_3
    invoke-direct {v1, v0, v2, v11}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_b

    if-nez v4, :cond_a

    .line 1149
    :try_start_4
    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getXPDKeystore()Ljava/security/KeyStore;

    move-result-object v12

    .line 1150
    iget-object v13, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v13, :cond_9

    if-nez v12, :cond_7

    .line 1153
    const-string v14, "12002"

    if-eqz v0, :cond_6

    move-object v15, v0

    goto :goto_3

    :cond_6
    move-object v15, v8

    :goto_3
    const/16 v16, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v15, v7, v16

    invoke-interface {v13, v10, v9, v14, v7}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    const/16 v16, 0x0

    .line 1156
    const-string v7, "12003"

    if-eqz v0, :cond_8

    move-object v14, v0

    goto :goto_4

    :cond_8
    move-object v14, v8

    :goto_4
    new-array v15, v6, [Ljava/lang/Object;

    aput-object v14, v15, v16

    invoke-interface {v13, v10, v9, v7, v15}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_b

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    goto :goto_5

    :cond_a
    const/16 v16, 0x0

    move-object v12, v11

    .line 1161
    :goto_5
    const-string v7, "null"

    if-nez v12, :cond_1c

    if-nez v4, :cond_b

    .line 1167
    :try_start_5
    const-string v4, "javax.net.ssl.keyStore"

    invoke-direct {v1, v0, v2, v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_b

    .line 1169
    :cond_b
    :try_start_6
    iget-object v2, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_b

    if-eqz v2, :cond_e

    .line 1171
    :try_start_7
    const-string v12, "12004"

    if-eqz v0, :cond_c

    move-object v13, v0

    goto :goto_6

    :cond_c
    move-object v13, v8

    :goto_6
    if-eqz v4, :cond_d

    move-object v14, v4

    goto :goto_7

    :cond_d
    move-object v14, v7

    :goto_7
    new-array v15, v5, [Ljava/lang/Object;

    aput-object v13, v15, v16

    aput-object v14, v15, v6

    invoke-interface {v2, v10, v9, v12, v15}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/security/NoSuchProviderException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_7} :catch_b

    .line 1175
    :cond_e
    :try_start_8
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStorePassword(Ljava/lang/String;)[C

    move-result-object v2

    .line 1176
    iget-object v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_8 .. :try_end_8} :catch_b

    if-eqz v12, :cond_11

    .line 1178
    :try_start_9
    const-string v13, "12005"

    if-eqz v0, :cond_f

    move-object v14, v0

    goto :goto_8

    :cond_f
    move-object v14, v8

    :goto_8
    if-eqz v2, :cond_10

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v15

    goto :goto_9

    :cond_10
    move-object v15, v7

    :goto_9
    const/16 v17, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v14, v6, v16

    aput-object v15, v6, v17

    invoke-interface {v12, v10, v9, v13, v6}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_a

    :cond_11
    const/16 v17, 0x1

    .line 1182
    :goto_a
    :try_start_a
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_a .. :try_end_a} :catch_b

    if-nez v6, :cond_12

    .line 1184
    :try_start_b
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/security/NoSuchProviderException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/security/KeyManagementException; {:try_start_b .. :try_end_b} :catch_b

    .line 1186
    :cond_12
    :try_start_c
    iget-object v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v12, :cond_15

    .line 1188
    const-string v13, "12006"

    if-eqz v0, :cond_13

    move-object v14, v0

    goto :goto_b

    :cond_13
    move-object v14, v8

    :goto_b
    if-eqz v6, :cond_14

    move-object v15, v6

    goto :goto_c

    :cond_14
    move-object v15, v7

    :goto_c
    new-array v11, v5, [Ljava/lang/Object;

    aput-object v14, v11, v16

    aput-object v15, v11, v17

    invoke-interface {v12, v10, v9, v13, v11}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1192
    :cond_15
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v11

    .line 1193
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStoreProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1194
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_c .. :try_end_c} :catch_b

    if-eqz v13, :cond_16

    move-object v11, v13

    :cond_16
    if-eqz v4, :cond_1d

    if-eqz v6, :cond_1d

    if-eqz v2, :cond_1d

    if-eqz v11, :cond_1d

    .line 1201
    :try_start_d
    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 1202
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v12, :cond_17

    .line 1204
    invoke-static {v11, v12}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    goto :goto_d

    .line 1206
    :cond_17
    invoke-static {v11}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 1208
    :goto_d
    iget-object v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v12, :cond_1b

    .line 1210
    const-string v13, "12010"

    if-eqz v0, :cond_18

    move-object v14, v0

    goto :goto_e

    :cond_18
    move-object v14, v8

    :goto_e
    if-eqz v11, :cond_19

    goto :goto_f

    :cond_19
    move-object v11, v7

    :goto_f
    new-array v15, v5, [Ljava/lang/Object;

    aput-object v14, v15, v16

    aput-object v11, v15, v17

    invoke-interface {v12, v10, v9, v13, v15}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1213
    iget-object v11, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    const-string v12, "12009"

    if-eqz v0, :cond_1a

    move-object v13, v0

    goto :goto_10

    :cond_1a
    move-object v13, v8

    :goto_10
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v14

    invoke-virtual {v14}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v13, v15, v16

    aput-object v14, v15, v17

    invoke-interface {v11, v10, v9, v12, v15}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    :cond_1b
    invoke-virtual {v4, v6, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1217
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2
    :try_end_d
    .catch Ljava/security/KeyStoreException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_11

    :catch_0
    move-exception v0

    .line 1227
    :try_start_e
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbce

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 1225
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbcd

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 1223
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbcc

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    .line 1221
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbcb

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    .line 1219
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbc8

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :cond_1c
    const/16 v17, 0x1

    :cond_1d
    const/4 v2, 0x0

    .line 1233
    :goto_11
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1234
    iget-object v6, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v6, :cond_20

    .line 1236
    const-string v11, "12011"

    if-eqz v0, :cond_1e

    move-object v12, v0

    goto :goto_12

    :cond_1e
    move-object v12, v8

    :goto_12
    if-eqz v4, :cond_1f

    move-object v13, v4

    goto :goto_13

    :cond_1f
    move-object v13, v7

    :goto_13
    new-array v14, v5, [Ljava/lang/Object;

    aput-object v12, v14, v16

    aput-object v13, v14, v17

    invoke-interface {v6, v10, v9, v11, v14}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1242
    :cond_20
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStorePassword(Ljava/lang/String;)[C

    move-result-object v6

    .line 1243
    iget-object v11, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v11, :cond_23

    .line 1245
    const-string v12, "12012"

    if-eqz v0, :cond_21

    move-object v13, v0

    goto :goto_14

    :cond_21
    move-object v13, v8

    :goto_14
    if-eqz v6, :cond_22

    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v14

    goto :goto_15

    :cond_22
    move-object v14, v7

    :goto_15
    new-array v15, v5, [Ljava/lang/Object;

    aput-object v13, v15, v16

    aput-object v14, v15, v17

    invoke-interface {v11, v10, v9, v12, v15}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1248
    :cond_23
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_24

    .line 1250
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v11

    .line 1252
    :cond_24
    iget-object v12, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v12, :cond_27

    .line 1254
    const-string v13, "12013"

    if-eqz v0, :cond_25

    move-object v14, v0

    goto :goto_16

    :cond_25
    move-object v14, v8

    :goto_16
    if-eqz v11, :cond_26

    move-object/from16 v18, v7

    move-object v15, v11

    goto :goto_17

    :cond_26
    move-object v15, v7

    move-object/from16 v18, v15

    :goto_17
    new-array v7, v5, [Ljava/lang/Object;

    aput-object v14, v7, v16

    aput-object v15, v7, v17

    invoke-interface {v12, v10, v9, v13, v7}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    :cond_27
    move-object/from16 v18, v7

    .line 1258
    :goto_18
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 1259
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStoreProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1260
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_e .. :try_end_e} :catch_b

    if-eqz v13, :cond_28

    move-object v7, v13

    :cond_28
    if-eqz v4, :cond_2e

    if-eqz v11, :cond_2e

    if-eqz v6, :cond_2e

    if-eqz v7, :cond_2e

    .line 1267
    :try_start_f
    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 1268
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v12, :cond_29

    .line 1270
    invoke-static {v7, v12}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    goto :goto_19

    .line 1272
    :cond_29
    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 1274
    :goto_19
    iget-object v6, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v6, :cond_2d

    .line 1277
    const-string v12, "12017"

    if-eqz v0, :cond_2a

    move-object v13, v0

    goto :goto_1a

    :cond_2a
    move-object v13, v8

    :goto_1a
    if-eqz v7, :cond_2b

    goto :goto_1b

    :cond_2b
    move-object/from16 v7, v18

    :goto_1b
    new-array v14, v5, [Ljava/lang/Object;

    aput-object v13, v14, v16

    aput-object v7, v14, v17

    invoke-interface {v6, v10, v9, v12, v14}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    iget-object v6, v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    const-string v7, "12016"

    if-eqz v0, :cond_2c

    goto :goto_1c

    :cond_2c
    move-object v0, v8

    :goto_1c
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v16

    aput-object v8, v5, v17

    invoke-interface {v6, v10, v9, v7, v5}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1284
    :cond_2d
    invoke-virtual {v4, v11}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1285
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0
    :try_end_f
    .catch Ljava/security/KeyStoreException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_1d

    :catch_5
    move-exception v0

    .line 1293
    :try_start_10
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbd6

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :catch_6
    move-exception v0

    .line 1291
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbd5

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    move-exception v0

    .line 1289
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbd4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :catch_8
    move-exception v0

    .line 1287
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbd3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :cond_2e
    const/4 v0, 0x0

    :goto_1d
    const/4 v5, 0x0

    .line 1297
    invoke-virtual {v3, v2, v0, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_10 .. :try_end_10} :catch_b

    return-object v3

    :catch_9
    move-exception v0

    const/4 v5, 0x0

    goto :goto_1e

    :catch_a
    move-exception v0

    const/4 v5, 0x0

    goto :goto_1f

    :catch_b
    move-exception v0

    .line 1303
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbd0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :catch_c
    move-exception v0

    move-object v5, v11

    .line 1301
    :goto_1e
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbcf

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2

    :catch_d
    move-exception v0

    move-object v5, v11

    .line 1299
    :goto_1f
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    const-wide/16 v3, 0xbca

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getXPDKeystore()Ljava/security/KeyStore;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
        }
    .end annotation

    .line 876
    const-string v0, "getKeyStore"

    const-wide/16 v1, 0xbd2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 878
    :try_start_0
    const-string v6, "com.ibm.rcp.security.auth.SecurePlatform"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 879
    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 880
    invoke-virtual {v7, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 881
    const-string v8, "isLoggedIn"

    invoke-virtual {v6, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 882
    invoke-virtual {v8, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 883
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 885
    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 886
    invoke-virtual {v0, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 908
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 909
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    invoke-direct {v3, v1, v2, v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    .line 905
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 906
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    invoke-direct {v3, v1, v2, v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v0

    .line 902
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 903
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    invoke-direct {v3, v1, v2, v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v0

    .line 899
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 900
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    invoke-direct {v3, v1, v2, v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v0

    .line 896
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 897
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;

    invoke-direct {v3, v1, v2, v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    :cond_0
    return-object v5
.end method

.method public static isSupportedOnJVM()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;
        }
    .end annotation

    .line 168
    const-string v0, "javax.net.ssl.SSLServerSocketFactory"

    .line 170
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private keyValid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    :goto_0
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 204
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    :goto_1
    array-length p1, v2

    if-ge v1, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public static obfuscate([C)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 283
    :cond_0
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->toByte([C)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 284
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 285
    aget-byte v1, p0, v0

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    array-length v3, v2

    rem-int v3, v0, v3

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string p0, "{xor}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static packCipherSuites([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 330
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 331
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toByte([C)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 260
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 262
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 263
    aget-char v4, p0, v1

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 264
    aput-byte v4, v0, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toChar([B)[C
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 242
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 244
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 245
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v1, v1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v5, v4

    int-to-char v4, v5

    aput-char v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static unpackCipherSuites(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 352
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x2c

    .line 353
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-le v2, v4, :cond_1

    .line 358
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    .line 360
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 365
    invoke-virtual {v0, p0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public createServerSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
        }
    .end annotation

    .line 1324
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 1325
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v1, :cond_3

    .line 1327
    const-string v2, "null (broker defaults)"

    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "com.ibm.ssl.enabledCipherSuites"

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "null (using platform-enabled cipher suites)"

    :goto_1
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const-string v4, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v8, "createServerSocketFactory"

    const-string v9, "12018"

    invoke-interface {v1, v4, v8, v9, v6}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz p1, :cond_2

    move-object v2, p1

    :cond_2
    new-instance v6, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getClientAuthentication(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object p1, v5, v3

    const-string p1, "12019"

    invoke-interface {v1, v4, v8, p1, v5}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1335
    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object p1

    return-object p1
.end method

.method public createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
        }
    .end annotation

    .line 1353
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 1354
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    .line 1356
    :cond_0
    const-string v2, "null (broker defaults)"

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "com.ibm.ssl.enabledCipherSuites"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "null (using platform-enabled cipher suites)"

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    const-string p1, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v2, "createSocketFactory"

    const-string v4, "12020"

    invoke-interface {v1, p1, v2, v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1360
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    return-object p1
.end method

.method public getClientAuthentication(Ljava/lang/String;)Z
    .locals 2

    .line 1096
    const-string v0, "com.ibm.ssl.clientAuthentication"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1099
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getConfiguration(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    if-nez p1, :cond_0

    .line 516
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/util/Properties;

    return-object p1
.end method

.method public getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1082
    const-string v0, "com.ibm.ssl.enabledCipherSuites"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1083
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->unpackCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getJSSEProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 866
    const-string v0, "com.ibm.ssl.contextProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1001
    const-string v0, "com.ibm.ssl.keyManager"

    const-string v1, "ssl.KeyManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyStore(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
        }
    .end annotation

    .line 927
    const-string v0, "com.ibm.ssl.keyStore"

    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 934
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getXPDKeystore()Ljava/security/KeyStore;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 936
    const-string p1, "Lotus Expeditor"

    return-object p1

    .line 941
    :cond_1
    const-string p1, "javax.net.ssl.keyStore"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyStorePassword(Ljava/lang/String;)[C
    .locals 2

    .line 956
    const-string v0, "com.ibm.ssl.keyStorePassword"

    const-string v1, "javax.net.ssl.keyStorePassword"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 959
    const-string v0, "{xor}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->deObfuscate(Ljava/lang/String;)[C

    move-result-object p1

    return-object p1

    .line 962
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeyStoreProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 989
    const-string v0, "com.ibm.ssl.keyStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyStoreType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 977
    const-string v0, "com.ibm.ssl.keyStoreType"

    const-string v1, "javax.net.ssl.keyStoreType"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSSLProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 854
    const-string v0, "com.ibm.ssl.protocol"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTrustManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1070
    const-string v0, "com.ibm.ssl.trustManager"

    const-string v1, "ssl.TrustManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTrustStore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1013
    const-string v0, "com.ibm.ssl.trustStore"

    const-string v1, "javax.net.ssl.trustStore"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTrustStorePassword(Ljava/lang/String;)[C
    .locals 2

    .line 1025
    const-string v0, "com.ibm.ssl.trustStorePassword"

    const-string v1, "javax.net.ssl.trustStorePassword"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1028
    const-string v0, "{xor}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->deObfuscate(Ljava/lang/String;)[C

    move-result-object p1

    return-object p1

    .line 1031
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrustStoreProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1058
    const-string v0, "com.ibm.ssl.trustStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1046
    const-string v0, "com.ibm.ssl.trustStoreType"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initialize(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->checkPropertyKeys(Ljava/util/Properties;)V

    .line 438
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 439
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 440
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->convertPassword(Ljava/util/Properties;)V

    if-eqz p2, :cond_0

    .line 442
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 444
    :cond_0
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    return-void
.end method

.method public merge(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 465
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->checkPropertyKeys(Ljava/util/Properties;)V

    .line 466
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    if-nez p2, :cond_0

    .line 468
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    :cond_0
    if-nez v0, :cond_1

    .line 471
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 473
    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->convertPassword(Ljava/util/Properties;)V

    .line 474
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    if-eqz p2, :cond_2

    .line 476
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 478
    :cond_2
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 494
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v1

    .line 496
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 498
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    return v0

    :cond_2
    return v1
.end method
