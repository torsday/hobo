tags = %(<!-- Tag definitions for the subs subsite -->

<include src="rapid" plugin="hobo"/>

<include src="taglibs/auto/subs/rapid/cards"/>
<include src="taglibs/auto/subs/rapid/pages"/>
<include src="taglibs/auto/subs/rapid/forms"/>

<set-theme name="clean"/>

<def tag="app-name">Testapp - Subs</def>
)

admin_tag = '<extend tag="page">
  <old-page merge>
    <append-stylesheets:>
      <stylesheet name="subs"/>
    </append-stylesheets:>
    <footer:>
      <a href="#{base_url}/">View Site</a> |
    </footer:>
  </old-page>
</extend>'

invite_only = %(<extend tag="card" for="#{user_resource_name.camelcase}">
  <old-card merge>
    <append-header:><%= h this.state.titleize %></append-header:>
  </old-card>
</extend>)