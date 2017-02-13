.class public Lcom/android/phone/PhoneApp;
.super Lmiui/external/Application;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$1;,
        Lcom/android/phone/PhoneApp$Delegate;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PhoneApp"


# instance fields
.field private mDcStatMonitor:Lcom/android/phone/utils/DcStatMonitor;

.field mPhoneGlobals:Lcom/android/phone/PhoneGlobals;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneApp;Lcom/android/phone/utils/DcStatMonitor;)Lcom/android/phone/utils/DcStatMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneApp;
    .param p1, "x1"    # Lcom/android/phone/utils/DcStatMonitor;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mDcStatMonitor:Lcom/android/phone/utils/DcStatMonitor;

    return-object p1
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/android/phone/PhoneApp$Delegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneApp$Delegate;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    return-object v0
.end method
