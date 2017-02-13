.class public Lcom/mediatek/phone/StkListEntrance;
.super Landroid/preference/PreferenceActivity;
.source "StkListEntrance.java"


# static fields
.field private static final REQUEST_TYPE:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "StkListEntrance"

.field private static final baseband:Ljava/lang/String;

.field private static mDefaultTitle:Ljava/lang/String;

.field public static mSlot:I

.field private static strTargetClass:Ljava/lang/String;

.field private static strTargetLoc:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSIMStateChangeFilter:Landroid/content/IntentFilter;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetClassIndex:I

.field private mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private serviceComplete:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 69
    sput-object v0, Lcom/mediatek/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    .line 82
    const-string v0, "gsm.baseband.capability"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/phone/StkListEntrance;->baseband:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/phone/StkListEntrance;->mTargetClassIndex:I

    .line 89
    new-instance v0, Lcom/mediatek/phone/StkListEntrance$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/StkListEntrance$1;-><init>(Lcom/mediatek/phone/StkListEntrance;)V

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    new-instance v0, Lcom/mediatek/phone/StkListEntrance$2;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/StkListEntrance$2;-><init>(Lcom/mediatek/phone/StkListEntrance;)V

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->serviceComplete:Ljava/lang/Runnable;

    .line 321
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/mediatek/phone/StkListEntrance;->serviceComplete:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/StkListEntrance;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/StkListEntrance;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/StkListEntrance;->updateSimState(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/phone/StkListEntrance;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/StkListEntrance;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/phone/StkListEntrance;->resetSimPrefernce()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/phone/StkListEntrance;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/StkListEntrance;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method private addSimInfoPreference()V
    .locals 22

    .prologue
    .line 259
    const-string v3, "StkListEntrance"

    const-string v4, "[addSimInfoPreference]+"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/phone/StkListEntrance;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 262
    .local v17, "root":Landroid/preference/PreferenceScreen;
    if-eqz v17, :cond_0

    .line 263
    invoke-static/range {p0 .. p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v13

    .line 264
    .local v13, "countInsertedCard":I
    const-string v3, "StkListEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countInsertedCard is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v19, 0x0

    .line 266
    .local v19, "slot":I
    const/16 v21, 0x2

    .line 272
    .local v21, "slotNum":I
    const/4 v15, 0x0

    .local v15, "i":I
    move/from16 v20, v19

    .end local v19    # "slot":I
    .local v20, "slot":I
    :goto_0
    if-ge v15, v13, :cond_0

    .line 273
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "slot":I
    .restart local v19    # "slot":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v18

    .line 274
    .local v18, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v18, :cond_2

    .line 275
    add-int/lit8 v15, v15, 0x1

    .line 276
    const/4 v3, 0x1

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    add-int/lit8 v5, v19, -0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 277
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v16

    .line 278
    .local v16, "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    const/4 v7, -0x1

    .line 280
    .local v7, "status":I
    :try_start_0
    move-object/from16 v0, v18

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->getSimIndicatorState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 284
    :goto_1
    const-string v3, "StkListEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim status of slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v2, Lcom/mediatek/phone/SimInfoPreference;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v6, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    move-object/from16 v0, v18

    iget v9, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    move/from16 v0, v19

    int-to-long v10, v0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/mediatek/phone/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V

    .line 290
    .local v2, "simInfoPref":Lcom/mediatek/phone/SimInfoPreference;
    const-string v3, "StkListEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[addSimInfoPreference][addPreference] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 298
    .end local v2    # "simInfoPref":Lcom/mediatek/phone/SimInfoPreference;
    .end local v7    # "status":I
    .end local v16    # "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 299
    const-string v3, "StkListEntrance"

    const-string v4, "all slot checked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v13    # "countInsertedCard":I
    .end local v15    # "i":I
    .end local v18    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v19    # "slot":I
    .end local v21    # "slotNum":I
    :cond_0
    return-void

    .line 281
    .restart local v7    # "status":I
    .restart local v13    # "countInsertedCard":I
    .restart local v15    # "i":I
    .restart local v16    # "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    .restart local v18    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v19    # "slot":I
    .restart local v21    # "slotNum":I
    :catch_0
    move-exception v14

    .line 282
    .local v14, "ex":Landroid/os/RemoteException;
    const-string v3, "StkListEntrance"

    const-string v4, "getSimIndicatorState fail!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 293
    .end local v7    # "status":I
    .end local v14    # "ex":Landroid/os/RemoteException;
    .end local v16    # "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    :cond_1
    const-string v3, "StkListEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v19, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]is absent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 296
    :cond_2
    const-string v3, "StkListEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo SIM[ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v19, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move/from16 v20, v19

    .line 302
    .end local v19    # "slot":I
    .restart local v20    # "slot":I
    goto/16 :goto_0
.end method

.method private isOnFlightMode()Z
    .locals 5

    .prologue
    .line 392
    const/4 v1, 0x0

    .line 394
    .local v1, "mode":I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/phone/StkListEntrance;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 400
    :goto_0
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airlane mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "StkListEntrance"

    const-string v3, "fail to get airlane mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v1, 0x0

    goto :goto_0

    .line 401
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private launchStk(I)Z
    .locals 12
    .param p1, "sim_id"    # I

    .prologue
    const v11, 0x7f0b0019

    const/4 v10, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 161
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.stk"

    .line 162
    .local v5, "pName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 164
    .local v0, "aName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v1, "cName":Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getIccCard(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 184
    .local v3, "iccCardState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v7, :cond_1

    .line 185
    const v7, 0x7f0b001a

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->showTextToast(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->finish()V

    .line 215
    .end local v1    # "cName":Landroid/content/ComponentName;
    .end local v3    # "iccCardState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    :goto_1
    return v10

    .line 167
    :pswitch_0
    const-string v0, "com.android.stk.StkLauncherActivity"

    .line 168
    goto :goto_0

    .line 170
    :pswitch_1
    const-string v0, "com.android.stk.StkLauncherActivityII"

    .line 171
    goto :goto_0

    .line 173
    :pswitch_2
    const-string v0, "com.android.stk.StkLauncherActivityIII"

    .line 174
    goto :goto_0

    .line 176
    :pswitch_3
    const-string v0, "com.android.stk.StkLauncherActivityIV"

    goto :goto_0

    .line 188
    .restart local v1    # "cName":Landroid/content/ComponentName;
    .restart local v3    # "iccCardState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/phone/StkListEntrance;->isOnFlightMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 189
    const v7, 0x7f0b001b

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->showTextToast(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->finish()V

    goto :goto_1

    .line 192
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v7, :cond_3

    .line 193
    const v7, 0x7f0b001c

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->showTextToast(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->finish()V

    goto :goto_1

    .line 196
    :cond_3
    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 197
    invoke-virtual {p0, v11}, Lcom/mediatek/phone/StkListEntrance;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->showTextToast(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->finish()V

    goto :goto_1

    .line 202
    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "StkListEntrance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[aaa][onPreferenceTreeClick][mSlot][aName] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/mediatek/phone/StkListEntrance;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "StkListEntrance"

    const-string v8, "[onPreferenceTreeClick] ActivityNotFoundException happened"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0, v11}, Lcom/mediatek/phone/StkListEntrance;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->showTextToast(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->finish()V

    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private resetSimPrefernce()V
    .locals 3

    .prologue
    .line 345
    const-string v1, "StkListEntrance"

    const-string v2, "[resetSimPrefernce]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 347
    .local v0, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 348
    invoke-direct {p0}, Lcom/mediatek/phone/StkListEntrance;->addSimInfoPreference()V

    .line 349
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->finish()V

    .line 351
    const-string v1, "StkListEntrance"

    const-string v2, "[activity finished]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    return-void
.end method

.method private setDefaultSIMIndicate(I)V
    .locals 6
    .param p1, "slotID"    # I

    .prologue
    .line 379
    const-string v3, "StkListEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSIMState][slotID] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    .line 381
    .local v1, "iTel":Lcom/mediatek/common/telephony/ITelephonyEx;
    const/4 v2, -0x1

    .line 383
    .local v2, "state":I
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->getSimIndicatorState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 387
    :goto_0
    const-string v3, "StkListEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSIMState][state] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0, p1, v2}, Lcom/mediatek/phone/StkListEntrance;->updateSimState(II)V

    .line 389
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "StkListEntrance"

    const-string v4, "getSimIndicatorState fail!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showTextToast(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 374
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 375
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 376
    return-void
.end method

.method private updateSimState(II)V
    .locals 6
    .param p1, "slotID"    # I
    .param p2, "state"    # I

    .prologue
    .line 355
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSimState]+ slot id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 358
    .local v1, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_1

    .line 359
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSimState][siminfo.mSimId] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/StkListEntrance;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/SimInfoPreference;

    .line 361
    .local v0, "pref":Lcom/mediatek/phone/SimInfoPreference;
    const-string v2, "StkListEntrance"

    const-string v3, "[updateSimState][setStatus] "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0, p2}, Lcom/mediatek/phone/SimInfoPreference;->setStatus(I)V

    .line 364
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSimState][Color] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v0, v2}, Lcom/mediatek/phone/SimInfoPreference;->setColor(I)V

    .line 367
    :cond_0
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState sim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0    # "pref":Lcom/mediatek/phone/SimInfoPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "StkListEntrance"

    const-string v1, "[onCreate] +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 124
    iput-object p0, p0, Lcom/mediatek/phone/StkListEntrance;->mContext:Landroid/content/Context;

    .line 128
    const v0, 0x7f05003a

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/StkListEntrance;->addPreferencesFromResource(I)V

    .line 129
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 131
    const-string v0, "StkListEntrance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseband is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/phone/StkListEntrance;->baseband:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    .line 140
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/phone/StkListEntrance;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/phone/StkListEntrance;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    .line 142
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/phone/StkListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/phone/StkListEntrance;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/mediatek/phone/StkListEntrance;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/StkListEntrance;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    const-string v0, "StkListEntrance"

    const-string v1, "[onCreate][addSimInfoPreference] "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/mediatek/phone/StkListEntrance;->addSimInfoPreference()V

    .line 149
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/StkListEntrance;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 157
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 326
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 328
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 219
    const-string v2, "StkListEntrance"

    const-string v3, "Enter onPreferenceClick function."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sput-object v4, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 222
    sput-object v4, Lcom/mediatek/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    .line 223
    const-string v2, "StkListEntrance"

    const-string v3, "[onPreferenceTreeClick] +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 226
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPreferenceTreeClick][Click SIM1][SimState] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v5}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getIccCard(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPreferenceTreeClick][Click SIM2][SimState] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getIccCard(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 236
    .local v1, "siminfo1":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_0

    .line 237
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    sput v2, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    .line 239
    :cond_0
    const-string v2, "StkListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[aaa][onPreferenceTreeClick][mSlot] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget v2, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    if-nez v2, :cond_2

    .line 242
    invoke-direct {p0, v5}, Lcom/mediatek/phone/StkListEntrance;->launchStk(I)Z

    .line 252
    :cond_1
    :goto_0
    const-string v2, "StkListEntrance"

    const-string v3, "[onPreferenceTreeClick] -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v5

    .line 243
    :cond_2
    sget v2, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    if-ne v2, v6, :cond_3

    .line 244
    invoke-direct {p0, v6}, Lcom/mediatek/phone/StkListEntrance;->launchStk(I)Z

    goto :goto_0

    .line 245
    :cond_3
    sget v2, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    if-ne v2, v7, :cond_4

    .line 246
    invoke-direct {p0, v7}, Lcom/mediatek/phone/StkListEntrance;->launchStk(I)Z

    goto :goto_0

    .line 247
    :cond_4
    sget v2, Lcom/mediatek/phone/StkListEntrance;->mSlot:I

    if-ne v2, v8, :cond_1

    .line 248
    invoke-direct {p0, v8}, Lcom/mediatek/phone/StkListEntrance;->launchStk(I)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 338
    sput-object v0, Lcom/mediatek/phone/StkListEntrance;->strTargetLoc:Ljava/lang/String;

    .line 339
    sput-object v0, Lcom/mediatek/phone/StkListEntrance;->strTargetClass:Ljava/lang/String;

    .line 340
    const-string v0, "StkListEntrance"

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0}, Lcom/mediatek/phone/StkListEntrance;->resetSimPrefernce()V

    .line 342
    return-void
.end method
