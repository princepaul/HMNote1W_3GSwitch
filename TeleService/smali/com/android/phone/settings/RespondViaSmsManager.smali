.class public Lcom/android/phone/settings/RespondViaSmsManager;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/RespondViaSmsManager$Settings;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KEY_CANNED_RESPONSE_PREF_1:Ljava/lang/String; = "canned_response_pref_1"

.field private static final KEY_CANNED_RESPONSE_PREF_2:Ljava/lang/String; = "canned_response_pref_2"

.field private static final KEY_CANNED_RESPONSE_PREF_3:Ljava/lang/String; = "canned_response_pref_3"

.field private static final KEY_CANNED_RESPONSE_PREF_4:Ljava/lang/String; = "canned_response_pref_4"

.field private static final KEY_INSTANT_TEXT_DEFAULT_COMPONENT:Ljava/lang/String; = "instant_text_def_component"

.field private static final KEY_PREFERRED_PACKAGE:Ljava/lang/String; = "preferred_package_pref"

.field private static final NUM_CANNED_RESPONSES:I = 0x4

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "respond_via_sms_prefs"

.field private static final TAG:Ljava/lang/String; = "RespondViaSmsManager"

.field private static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/settings/RespondViaSmsManager;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/phone/settings/RespondViaSmsManager;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/phone/settings/RespondViaSmsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v0, "RespondViaSmsManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method
