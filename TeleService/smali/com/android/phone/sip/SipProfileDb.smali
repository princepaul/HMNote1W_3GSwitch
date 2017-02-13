.class public Lcom/android/phone/sip/SipProfileDb;
.super Ljava/lang/Object;
.source "SipProfileDb.java"


# static fields
.field private static final PROFILES_DIR:Ljava/lang/String; = "/profiles/"

.field private static final PROFILE_OBJ_FILE:Ljava/lang/String; = ".pobj"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProfilesCount:I

.field private mProfilesDirectory:Ljava/lang/String;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p1}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 52
    return-void
.end method

.method private deleteProfile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 71
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Ljava/io/File;)V

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 75
    return-void
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;
    .locals 8
    .param p1, "profileObjectFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 157
    .local v0, "atomicFile":Lcom/android/internal/os/AtomicFile;
    const/4 v2, 0x0

    .line 159
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    .local v4, "p":Landroid/net/sip/SipProfile;
    if-eqz v3, :cond_0

    .line 166
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    move-object v2, v3

    .line 169
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v4    # "p":Landroid/net/sip/SipProfile;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v4

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deserialize a profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 169
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 165
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v5

    .line 165
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 162
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private isChild(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .param p1, "base"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 176
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    sget-object v2, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    const-string v3, "isChild, file is not a child of the base dir."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "31530456"

    aput-object v4, v3, v0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, ""

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method private retrieveSipProfileListInternal()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 126
    .local v9, "sipProfileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v8, "root":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "dirs":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 152
    :goto_0
    return-object v9

    .line 131
    :cond_0
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    .line 132
    .local v1, "dir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v11, ".pobj"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 131
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 137
    :cond_2
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/phone/sip/SipProfileDb;->deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;

    move-result-object v7

    .line 138
    .local v7, "p":Landroid/net/sip/SipProfile;
    if-eqz v7, :cond_1

    .line 141
    invoke-virtual {v7}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 145
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 146
    .end local v7    # "p":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    const-string v11, "retrieveProfileListFromStorage()"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 150
    .end local v1    # "dir":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "f":Ljava/io/File;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    iput v10, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    .line 151
    iget-object v10, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    iget v11, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v10, v11}, Lcom/android/phone/sip/SipSharedPreferences;->setProfilesCount(I)V

    goto :goto_0
.end method


# virtual methods
.method public deleteProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "p"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const-class v2, Lcom/android/phone/sip/SipProfileDb;

    monitor-enter v2

    .line 56
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v0, "profileFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/phone/sip/SipProfileDb;->isChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid Profile Credentials!"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "profileFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 60
    .restart local v0    # "profileFile":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Ljava/io/File;)V

    .line 61
    iget v1, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    if-gez v1, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    iget v3, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v1, v3}, Lcom/android/phone/sip/SipSharedPreferences;->setProfilesCount(I)V

    .line 65
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    return-void
.end method

.method public getProfilesCount()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSharedPreferences;->getProfilesCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    goto :goto_0
.end method

.method public retrieveSipProfileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const-class v1, Lcom/android/phone/sip/SipProfileDb;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveProfile(Landroid/net/sip/SipProfile;)V
    .locals 9
    .param p1, "p"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const-class v7, Lcom/android/phone/sip/SipProfileDb;

    monitor-enter v7

    .line 79
    :try_start_0
    iget v6, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    if-gez v6, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    .line 82
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v2, "f":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v2}, Lcom/android/phone/sip/SipProfileDb;->isChild(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 84
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Invalid Profile Credentials!"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 108
    .end local v2    # "f":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 86
    .restart local v2    # "f":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 89
    :cond_2
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string v8, ".pobj"

    invoke-direct {v6, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .local v0, "atomicFile":Lcom/android/internal/os/AtomicFile;
    const/4 v3, 0x0

    .line 92
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 94
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 95
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_3
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 98
    iget-object v6, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    iget v8, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v6, v8}, Lcom/android/phone/sip/SipSharedPreferences;->setProfilesCount(I)V

    .line 99
    invoke-virtual {v0, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 104
    if-eqz v5, :cond_3

    .line 105
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 108
    :cond_3
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    return-void

    .line 100
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    :try_start_5
    invoke-virtual {v0, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 102
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    :goto_1
    if-eqz v4, :cond_4

    .line 105
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    :cond_4
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 104
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 100
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method
