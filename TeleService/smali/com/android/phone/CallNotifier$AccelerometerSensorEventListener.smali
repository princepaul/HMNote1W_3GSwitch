.class Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccelerometerSensorEventListener"
.end annotation


# static fields
.field private static final TRIGGER_THRESHOLD:I = 0x3


# instance fields
.field private mHandonRingerEnable:Z

.field private mHandonTriggered:Z

.field private mHandonTriggeringCount:I

.field private mRunning:Z

.field private mSensorCount:I

.field private mStartZ:F

.field private mTurnoverMuteEnable:Z

.field private mTurnoverTiggeringCount:I

.field private mTurnoverTriggered:Z

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 1

    .prologue
    .line 4151
    iput-object p1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mSensorCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/phone/CallNotifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/CallNotifier;
    .param p2, "x1"    # Lcom/android/phone/CallNotifier$1;

    .prologue
    .line 4151
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;-><init>(Lcom/android/phone/CallNotifier;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 4239
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const-wide/high16 v7, 0x401a000000000000L    # 6.5

    const-wide/high16 v5, -0x3fde000000000000L    # -9.0

    const/4 v3, 0x2

    .line 4191
    iget-object v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$1900(Lcom/android/phone/CallNotifier;)Lcom/android/phone/Ringer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->isNowVibrating()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 4234
    :cond_0
    :goto_0
    return-void

    .line 4196
    :cond_1
    iget v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mSensorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mSensorCount:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 4198
    iget v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mSensorCount:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 4199
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iput v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mStartZ:F

    .line 4201
    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v3

    .line 4202
    .local v0, "z":F
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverMuteEnable:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverTriggered:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mStartZ:F

    float-to-double v1, v1

    cmpl-double v1, v1, v7

    if-lez v1, :cond_5

    float-to-double v1, v0

    cmpg-double v1, v1, v5

    if-gez v1, :cond_5

    .line 4209
    iget v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverTiggeringCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverTiggeringCount:I

    if-lt v1, v10, :cond_3

    .line 4210
    iget-object v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 4211
    const-string v1, "CallNotifier"

    const-string v2, "set ringer silence"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverTriggered:Z

    .line 4218
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mHandonRingerEnable:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mHandonTriggered:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverTriggered:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mStartZ:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4021000000000000L    # 8.5

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_4

    iget v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mStartZ:F

    float-to-double v1, v1

    cmpg-double v1, v1, v5

    if-gez v1, :cond_6

    :cond_4
    float-to-double v1, v0

    const-wide/high16 v3, -0x3fe6000000000000L    # -6.5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    float-to-double v1, v0

    cmpg-double v1, v1, v7

    if-gez v1, :cond_6

    .line 4226
    iget v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mHandonTriggeringCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mHandonTriggeringCount:I

    if-lt v1, v10, :cond_0

    .line 4227
    iget-object v1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->decrescendoRingerVolume()V
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$2000(Lcom/android/phone/CallNotifier;)V

    goto :goto_0

    .line 4215
    :cond_5
    iput v9, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverTiggeringCount:I

    goto :goto_1

    .line 4232
    :cond_6
    iput v9, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mHandonTriggeringCount:I

    goto :goto_0
.end method

.method start(ZZ)V
    .locals 5
    .param p1, "turnoverMuteEnable"    # Z
    .param p2, "handonRingerEnable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4165
    iput-boolean p1, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverMuteEnable:Z

    .line 4166
    iput-boolean p2, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mHandonRingerEnable:Z

    .line 4167
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverMuteEnable:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mHandonRingerEnable:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mRunning:Z

    if-nez v2, :cond_1

    .line 4168
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mRunning:Z

    .line 4169
    iput v3, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mSensorCount:I

    .line 4170
    iput v3, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverTiggeringCount:I

    .line 4171
    iput v3, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mHandonTriggeringCount:I

    .line 4172
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mTurnoverTriggered:Z

    .line 4173
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mHandonTriggered:Z

    .line 4174
    iget-object v2, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 4175
    .local v1, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 4176
    .local v0, "sensor":Landroid/hardware/Sensor;
    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4178
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    .end local v1    # "sm":Landroid/hardware/SensorManager;
    :cond_1
    return-void
.end method

.method stop()V
    .locals 4

    .prologue
    .line 4181
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mRunning:Z

    if-eqz v2, :cond_0

    .line 4182
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->mRunning:Z

    .line 4183
    iget-object v2, p0, Lcom/android/phone/CallNotifier$AccelerometerSensorEventListener;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 4184
    .local v1, "sm":Landroid/hardware/SensorManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 4185
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 4187
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    .end local v1    # "sm":Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method
