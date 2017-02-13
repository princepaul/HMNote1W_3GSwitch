.class public Lcom/android/phone/MiuiNotificationMgr;
.super Landroid/content/BroadcastReceiver;
.source "MiuiNotificationMgr.java"


# static fields
.field public static final AUTOMATIC_ADD_COUNTRY_CODE:Ljava/lang/String; = "automatic_add_country_code"

.field private static final DBG:Z

.field public static final DELETE_DEMINDER_TIME_KEY:Ljava/lang/String; = "delete_deminder_time"

.field public static final EVENT_VOICE_ROAMING_OFF:I = 0x1

.field public static final EVENT_VOICE_ROAMING_ON:I = 0x0

.field public static final HAS_NOTIFICATION_KEY:Ljava/lang/String; = "has_notification"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PRE_DATE_KEY:Ljava/lang/String; = "pre_date"

.field public static final VOICE_ROAMING_ON_NOTIFICATION:I = 0x1

.field public static final VOICE_ROAMING_REMINDER_DELETE_ACTION:Ljava/lang/String; = "voice_roaming_reminder_action"

.field public static final VOICE_ROAMING_REMINDER_INTERVAL_TAG:Ljava/lang/String; = "voice_roaming_reminder_interval"

.field public static final VOICE_ROAMING_REMINDER_INTERVAL_TIME:J = 0x9a7ec800L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    const-class v2, Lcom/android/phone/MiuiNotificationMgr;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/MiuiNotificationMgr;->LOG_TAG:Ljava/lang/String;

    .line 37
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/MiuiNotificationMgr;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 3
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    new-instance v0, Lcom/android/phone/MiuiNotificationMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MiuiNotificationMgr$1;-><init>(Lcom/android/phone/MiuiNotificationMgr;)V

    iput-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    .line 105
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 108
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "voice_roaming_reminder_action"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const-string v1, "voice_roaming_reminder_interval"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 111
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/MiuiNotificationMgr;->registerForVoiceRoaming()V

    .line 114
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-object v0, Lcom/android/phone/MiuiNotificationMgr;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method


# virtual methods
.method hideVoiceRoamingOn()V
    .locals 3

    .prologue
    .line 188
    sget-boolean v0, Lcom/android/phone/MiuiNotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "hideVoiceRoamingOn()..."

    invoke-direct {p0, v0}, Lcom/android/phone/MiuiNotificationMgr;->log(Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 191
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "has_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    const-string v0, "voice_roaming_reminder_action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/phone/MiuiNotificationMgr;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "has_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    :cond_0
    return-void
.end method

.method registerForVoiceRoaming()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 118
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v3

    .line 119
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 120
    .local v0, "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 121
    .local v1, "geminiSlots":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 122
    aget v5, v1, v2

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    .line 125
    .local v4, "serviceStateTracker":Lcom/android/internal/telephony/ServiceStateTracker;
    iget-object v5, p0, Lcom/android/phone/MiuiNotificationMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object v5, p0, Lcom/android/phone/MiuiNotificationMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v1    # "geminiSlots":[I
    .end local v2    # "i":I
    .end local v4    # "serviceStateTracker":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_0
    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    .line 132
    .restart local v4    # "serviceStateTracker":Lcom/android/internal/telephony/ServiceStateTracker;
    iget-object v5, p0, Lcom/android/phone/MiuiNotificationMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    iget-object v5, p0, Lcom/android/phone/MiuiNotificationMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    .end local v4    # "serviceStateTracker":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_1
    return-void
.end method

.method showVoiceRoamingOn()V
    .locals 15

    .prologue
    const/high16 v14, 0x8000000

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 142
    sget-boolean v6, Lcom/android/phone/MiuiNotificationMgr;->DBG:Z

    if-eqz v6, :cond_0

    .line 143
    const-string v6, "showVoiceRoamingOn()..."

    invoke-direct {p0, v6}, Lcom/android/phone/MiuiNotificationMgr;->log(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/MiuiSettings$Telephony;->isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "delete_deminder_time"

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "has_notification"

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "pre_date"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide v8, 0x9a7ec800L

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 155
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "pre_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "delete_deminder_time"

    iget-object v8, p0, Lcom/android/phone/MiuiNotificationMgr;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "delete_deminder_time"

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "has_notification"

    invoke-interface {v6, v7, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/phone/settings/TelocationSetting;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "automatic_add_country_code"

    invoke-virtual {v4, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v12, v4, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 166
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "voice_roaming_reminder_action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v12, v7, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 170
    .local v3, "deleteIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0b04f9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 172
    .local v2, "contentText":Ljava/lang/CharSequence;
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108008a

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/MiuiNotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0b04f8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 180
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 181
    .local v5, "notif":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/phone/MiuiNotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v13, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
