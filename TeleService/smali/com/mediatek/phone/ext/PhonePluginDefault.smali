.class public Lcom/mediatek/phone/ext/PhonePluginDefault;
.super Landroid/content/ContextWrapper;
.source "PhonePluginDefault.java"

# interfaces
.implements Lcom/mediatek/phone/ext/IPhonePlugin;


# instance fields
.field private mBaseContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginDefault;->mBaseContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/mediatek/phone/ext/PhonePluginDefault;->mBaseContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public createCallCardExtension()Lcom/mediatek/phone/ext/CallCardExtension;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/mediatek/phone/ext/CallCardExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/CallCardExtension;-><init>()V

    return-object v0
.end method

.method public createCallNotifierExtension()Lcom/mediatek/phone/ext/CallNotifierExtension;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/mediatek/phone/ext/CallNotifierExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/CallNotifierExtension;-><init>()V

    return-object v0
.end method

.method public createCallSettingsConnectionExtension()Lcom/mediatek/phone/ext/DefaultCallSettingsConnection;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/mediatek/phone/ext/DefaultCallSettingsConnection;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/DefaultCallSettingsConnection;-><init>()V

    return-object v0
.end method

.method public createEmergencyDialerExtension()Lcom/mediatek/phone/ext/EmergencyDialerExtension;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/mediatek/phone/ext/EmergencyDialerExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/EmergencyDialerExtension;-><init>()V

    return-object v0
.end method

.method public createInCallScreenExtension()Lcom/mediatek/phone/ext/InCallScreenExtension;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/mediatek/phone/ext/InCallScreenExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/InCallScreenExtension;-><init>()V

    return-object v0
.end method

.method public createInCallTouchUiExtension()Lcom/mediatek/phone/ext/InCallTouchUiExtension;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/mediatek/phone/ext/InCallTouchUiExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/InCallTouchUiExtension;-><init>()V

    return-object v0
.end method

.method public createMmiCodeExtension()Lcom/mediatek/phone/ext/MmiCodeExtension;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/mediatek/phone/ext/MmiCodeExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/MmiCodeExtension;-><init>()V

    return-object v0
.end method

.method public createOthersSettingsExtension()Lcom/mediatek/phone/ext/OthersSettingsExtension;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/mediatek/phone/ext/OthersSettingsExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/OthersSettingsExtension;-><init>()V

    return-object v0
.end method

.method public createPhoneCallOptionHandlerExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;-><init>()V

    return-object v0
.end method

.method public createPhoneCallOptionHandlerFactoryExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;-><init>()V

    return-object v0
.end method

.method public createPhoneGlobalsBroadcastReceiverExtension()Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;-><init>()V

    return-object v0
.end method

.method public createPhoneGlobalsExtension()Lcom/mediatek/phone/ext/PhoneGlobalsExtension;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/mediatek/phone/ext/PhoneGlobalsExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneGlobalsExtension;-><init>()V

    return-object v0
.end method

.method public createSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/SettingsExtension;-><init>()V

    return-object v0
.end method

.method public createVTCallBannerControllerExtension()Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/VTCallBannerControllerExtension;-><init>()V

    return-object v0
.end method

.method public createVTInCallScreenExtension()Lcom/mediatek/phone/ext/VTInCallScreenExtension;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;-><init>()V

    return-object v0
.end method

.method public createVTInCallScreenFlagsExtension()Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;-><init>()V

    return-object v0
.end method
