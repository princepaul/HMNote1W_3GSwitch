.class public final Lcom/mediatek/phone/vt/VTCallUtils;
.super Ljava/lang/Object;
.source "VTCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;
    }
.end annotation


# static fields
.field private static final BITMAP_COMPRESS_QUALITY:I = 0x64

.field private static final CHANGE_FILE_PERMISSION:Ljava/lang/String; = "chmod 640 "

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "VTCallUtils"

.field private static final VDBG:Z = true

.field public static final VT_CALL_END:Ljava/lang/String; = "android.phone.extra.VT_CALL_END"

.field public static final VT_CALL_START:Ljava/lang/String; = "android.phone.extra.VT_CALL_START"

.field private static sDialWithSpeakerOff:Z

.field private static sNumbersDefault:[Ljava/lang/String;

.field private static sNumbersNone:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    sput-boolean v2, Lcom/mediatek/phone/vt/VTCallUtils;->sDialWithSpeakerOff:Z

    .line 261
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "12531"

    aput-object v1, v0, v2

    const-string v1, "+8612531"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/phone/vt/VTCallUtils;->sNumbersNone:[Ljava/lang/String;

    .line 262
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12535"

    aput-object v1, v0, v2

    const-string v1, "13800100011"

    aput-object v1, v0, v3

    const-string v1, "+8612535"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "+8613800100011"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/phone/vt/VTCallUtils;->sNumbersDefault:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 86
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->checkDefaultPictureFile()V

    return-void
.end method

.method static synthetic access$100(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 86
    invoke-static {p0}, Lcom/mediatek/phone/vt/VTCallUtils;->checkUserSelectPictureFile(I)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static checkDefaultPictureFile()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "checkVTFile() : the default pic file not exists , create it ! "

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->generateVTDefaultFile(Ljava/lang/String;)V

    .line 145
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const-string v0, "checkVTFile() : the default pic2 file not exists , create it ! "

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->generateVTDefaultFile(Ljava/lang/String;)V

    .line 151
    :cond_1
    return-void
.end method

.method private static checkUserSelectPictureFile(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 154
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const-string v0, "checkVTFile() : the default user select pic file not exists , create it ! "

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->generateVTDefaultFile(Ljava/lang/String;)V

    .line 161
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const-string v0, "checkVTFile() : the default user select pic2 file not exists , create it ! "

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 165
    invoke-static {p0}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->generateVTDefaultFile(Ljava/lang/String;)V

    .line 169
    :cond_1
    const-string v0, "end checkVTFile() ! "

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static checkVTFileAsync()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "start checkVTFile() !"

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/phone/vt/VTCallUtils$1;

    invoke-direct {v1}, Lcom/mediatek/phone/vt/VTCallUtils$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method public static checkVTTimingMode(Ljava/lang/String;)Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVTTimingMode - number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/phone/vt/VTCallUtils;->sNumbersNone:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    .local v1, "arrayListNone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/phone/vt/VTCallUtils;->sNumbersDefault:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    .local v0, "arrayListDefault":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVTTimingMode - return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 285
    sget-object v2, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    .line 295
    :goto_0
    return-object v2

    .line 288
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVTTimingMode - return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 292
    sget-object v2, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    goto :goto_0

    .line 295
    :cond_1
    sget-object v2, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    goto :goto_0
.end method

.method public static closeVTManager()V
    .locals 3

    .prologue
    .line 514
    const-string v0, "closeVTManager()!"

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isBluetoothAudioConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    :cond_0
    const-string v0, "bluetooth audio is not connected, turn off speaker"

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 527
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->isVTRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopVideoRecord()V

    .line 532
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->onDisconnected()V

    .line 534
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTClose()V

    .line 535
    return-void
.end method

.method private static generateVTDefaultFile(Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateVTDefaultFile, path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0, v0}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Bitmap.isRecycled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Bitmap.isRecycled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - Bitmap.isRecycled() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    :cond_1
    throw v2
.end method

.method public static getCSNetType(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    const/4 v3, -0x1

    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, "csNetType":I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v1

    .line 719
    .local v1, "index":I
    if-eq v1, v3, :cond_0

    .line 720
    sget-object v2, Lcom/mediatek/phone/GeminiConstants;->PROPERTY_CS_NETWORK_TYPES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 724
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> getCSNetType(): csNetType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 726
    return v0
.end method

.method public static handleVTCallAutoDropBack(ILandroid/content/Intent;)Z
    .locals 5
    .param p0, "slotId"    # I
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 759
    invoke-static {p0}, Lcom/mediatek/phone/vt/VTCallUtils;->isAutoDropBack(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 760
    const-string v3, "com.android.phone.extra.video"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 761
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "toastString":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 766
    .end local v0    # "toastString":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static internalAnwerVTCallPre()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 435
    const-string v3, "internalAnwerVTCallPre() ..."

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->reset()V

    .line 441
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iput-boolean v5, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    .line 443
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->closeVTManager()V

    .line 452
    const-string v3, "anwerVTCallPre: set VTInCallScreenFlags.getInstance().mVTShouldCloseVTManager = false"

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    .line 456
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->resetPartial()V

    .line 460
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 461
    .local v1, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    .line 463
    .local v0, "dt":Lcom/mediatek/phone/DualTalkUtils;
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 467
    .end local v0    # "dt":Lcom/mediatek/phone/DualTalkUtils;
    :cond_1
    invoke-static {v5, v1}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(ZLcom/android/internal/telephony/Call;)V

    .line 470
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/mediatek/phone/vt/VTManagerWrapper;->incomingVTCall(I)V

    .line 474
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 475
    .local v2, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v2, :cond_5

    .line 476
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iput v4, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    .line 484
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v3

    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/VTSettingUtils;->pushVTSettingParams(I)V

    .line 486
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTOpen(Landroid/content/Context;I)V

    .line 489
    const-string v3, "0"

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v4

    iget-object v4, v4, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 490
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->updatePicToReplaceLocalVideo()V

    .line 494
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 496
    const-string v3, "- Now DM locked, VTManagerWrapper.getInstance().lockPeerVideo() start"

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTManagerWrapper;->lockPeerVideo()V

    .line 500
    const-string v3, "- Now DM locked, VTManagerWrapper.getInstance().lockPeerVideo() end"

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 506
    :cond_3
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/settings/VTSettingUtils;->getListener()Lcom/mediatek/settings/VTSettingUtils$Listener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 507
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/settings/VTSettingUtils;->getListener()Lcom/mediatek/settings/VTSettingUtils$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/settings/VTSettingUtils$Listener;->answerVTCallPre()V

    .line 510
    :cond_4
    :goto_0
    return-void

    .line 478
    :cond_5
    const-string v3, "internalAnswerVTCallPre(), accept a incoming call, but can not get ring call sim info, sim info is null,  need to check !!!!!"

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAutoDropBack(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 734
    invoke-static {p0}, Lcom/mediatek/phone/vt/VTCallUtils;->getCSNetType(I)I

    move-result v1

    .line 735
    .local v1, "csNetType":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.phone_preferences"

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 737
    .local v2, "sp":Landroid/content/SharedPreferences;
    if-nez v2, :cond_1

    .line 739
    const-string v4, "isAutoDropBack() : can not find \'com.android.phone_preferences\'..."

    invoke-static {v4}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 748
    :cond_0
    :goto_0
    return v3

    .line 743
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button_vt_auto_dropback_key_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 744
    .local v0, "autoDropBack":Z
    if-eq v4, v1, :cond_2

    const/4 v5, 0x2

    if-ne v5, v1, :cond_0

    :cond_2
    if-eqz v0, :cond_0

    .line 745
    const-string v3, "Need drop voice call!"

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    move v3, v4

    .line 746
    goto :goto_0
.end method

.method public static isVTActive()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public static isVTCallActive()Z
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    return v0
.end method

.method public static isVTDialWithSpeakerOff()Z
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public static isVTIdle()Z
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x1

    return v0
.end method

.method public static isVTRinging()Z
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public static isVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v0, 0x0

    .line 543
    if-nez p0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v0

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "VTCallUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public static makeVoiceReCall(Ljava/lang/String;I)V
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "slot"    # I

    .prologue
    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeVoiceReCall(), number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 771
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 772
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    const-string v1, "com.android.phone.extra.international"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    const-string v1, "com.android.phone.extra.vt_make_voice_recall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 775
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 776
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    .line 777
    return-void
.end method

.method public static placeVTCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;I)I
    .locals 9
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "slotId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x2

    .line 307
    const/4 v3, 0x0

    .line 310
    .local v3, "status":I
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeVTCall: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 313
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    if-eq v6, v7, :cond_0

    .line 428
    :goto_0
    return v5

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->isIdleSsString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 318
    const-string v6, "the number for VT call is idle ss string"

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v2

    .line 380
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v6, "VTCallUtils"

    const-string v7, "Exception from vtDial()"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    const/4 v3, 0x2

    .line 386
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :goto_1
    if-eq v3, v5, :cond_4

    .line 390
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/mediatek/settings/VTSettingUtils;->pushVTSettingParams(I)V

    .line 393
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->reset()V

    .line 394
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    if-nez v5, :cond_2

    .line 395
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.phone.extra.VT_CALL_START"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v5

    iput-boolean v8, v5, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 398
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v5

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    .line 399
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v5

    iput p3, v5, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    .line 401
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/settings/VTSettingUtils;->updateVTEngineerModeValues()V

    .line 403
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v5

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    iput-boolean v6, v5, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 406
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, p3}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTOpen(Landroid/content/Context;I)V

    .line 409
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/settings/VTSettingUtils;->getListener()Lcom/mediatek/settings/VTSettingUtils$Listener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 410
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/settings/VTSettingUtils;->getListener()Lcom/mediatek/settings/VTSettingUtils$Listener;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/settings/VTSettingUtils$Listener;->dialVTCallSuccess()V

    .line 414
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 416
    const-string v5, "- Now DM locked, VTManagerWrapper.getInstance().lockPeerVideo() start"

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/phone/vt/VTManagerWrapper;->lockPeerVideo()V

    .line 420
    const-string v5, "- Now DM locked, VTManagerWrapper.getInstance().lockPeerVideo() end"

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    :cond_4
    move v5, v3

    .line 428
    goto/16 :goto_0

    .line 323
    :cond_5
    :try_start_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    instance-of v6, p0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v6, :cond_7

    .line 325
    :cond_6
    const-string v6, "the number for VT call is idle uri string"

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_7
    invoke-static {p3}, Lcom/mediatek/phone/vt/VTCallUtils;->getCSNetType(I)I

    move-result v1

    .line 334
    .local v1, "csNetType":I
    if-eq v8, v1, :cond_8

    if-ne v5, v1, :cond_9

    .line 335
    :cond_8
    const/4 v5, 0x3

    goto/16 :goto_0

    .line 338
    :cond_9
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->placeCallRegister(Lcom/android/internal/telephony/Phone;)V

    .line 339
    invoke-static {p0, p1, p3}, Lcom/mediatek/phone/vt/VTCallUtils;->vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 341
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vtDial() returned: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 343
    if-nez v0, :cond_b

    .line 344
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v8, :cond_a

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialed MMI code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 349
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 353
    :cond_a
    const/4 v3, 0x2

    goto/16 :goto_1

    .line 356
    :cond_b
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 363
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 364
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 365
    .local v4, "userDataObject":Ljava/lang/Object;
    if-nez v4, :cond_c

    .line 366
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 371
    :cond_c
    instance-of v6, v4, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_d

    .line 372
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .end local v4    # "userDataObject":Ljava/lang/Object;
    iput-object p2, v4, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 374
    .restart local v4    # "userDataObject":Ljava/lang/Object;
    :cond_d
    check-cast v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v4    # "userDataObject":Ljava/lang/Object;
    iget-object v6, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v6, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p0, "bitName"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const-string v5, "saveMyBitmap()..."

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 208
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 210
    const/4 v2, 0x0

    .line 213
    .local v2, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .local v3, "fOut":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 218
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :goto_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 220
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :goto_1
    :try_start_2
    const-string v5, "Change file visit right for mediaserver process"

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 640 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 241
    .end local v0    # "command":Ljava/lang/String;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 245
    :goto_3
    return-void

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 233
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 234
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    const-string v5, "exception happens when change file permission"

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 242
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 243
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static setVTDialWithSpeakerOff(Z)V
    .locals 0
    .param p0, "off"    # Z

    .prologue
    .line 659
    sput-boolean p0, Lcom/mediatek/phone/vt/VTCallUtils;->sDialWithSpeakerOff:Z

    .line 660
    return-void
.end method

.method public static updateLocalViewToVTManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 670
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    if-nez v0, :cond_2

    .line 671
    const-string v0, "VTCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalViewToVTManager: MO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    if-eqz v0, :cond_1

    .line 674
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setLocalView(ILjava/lang/String;)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->updatePicToReplaceLocalVideo()V

    goto :goto_0

    .line 679
    :cond_2
    const-string v0, "VTCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalViewToVTManager: MT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 682
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setLocalView(ILjava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_3
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->updatePicToReplaceLocalVideo()V

    goto :goto_0
.end method

.method public static updatePicToReplaceLocalVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 700
    const-string v0, "VTCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePicToReplaceLocalVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setLocalView(ILjava/lang/String;)V

    .line 709
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setLocalView(ILjava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTManagerWrapper;->getInstance()Lcom/mediatek/phone/vt/VTManagerWrapper;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setLocalView(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-static {p0, p1, p2}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 639
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    return-object v0
.end method
