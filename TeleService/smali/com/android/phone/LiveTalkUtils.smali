.class public Lcom/android/phone/LiveTalkUtils;
.super Ljava/lang/Object;
.source "LiveTalkUtils.java"


# static fields
.field public static final CALL_ID:Ljava/lang/String; = "callId"

.field public static final LIVETALK_CALLLOG_SCHEMA:Ljava/lang/String; = "calllog://"

.field public static final LIVETALK_INTENT_ACTION:Ljava/lang/String; = "com.miui.livetalk"

.field public static final LIVETALK_INTENT_ACTION_CALLLOG:Ljava/lang/String; = "com.miui.livetalk.calllog"

.field public static final LIVETALK_SCHEMA:Ljava/lang/String; = "livetalk://"

.field public static final PROVIDER:Ljava/lang/String; = "thirdName"

.field public static liveTalkInfo:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/phone/LiveTalkUtils;->liveTalkInfo:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
